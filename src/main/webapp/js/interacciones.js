$(document).ready(function () {
    const servicesByCategory = {
        "Limpieza y mantenimiento": ["Limpieza de hogar", "Limpieza de ventanas", "Lavado de alfombras", "Mantenimiento de techos"],
        "Reparaciones": ["Electricista", "Reparación de plomería", "Reparación de techos", "Reparación de pisos"],
        "Cuidados": ["Cuidado de niños", "Cuidado de ancianos", "Cuidado de mascotas", "Cuidado de plantas"],
        "Mudanzas y transporte": ["Mudanzas", "Transporte de muebles", "Ensamblaje de muebles"],
        "Otros servicios": ["Otros servicios"]
    };
    const allServicesFlat = Object.values(servicesByCategory).flat();
    const maxSuggestions = 5;

    let selectedService = null;

    // Inicializar categorías
    const $categoriesList = $("#categories-list");
    for (const category in servicesByCategory) {
        const categoryHtml = `
                <li class="list-group-item category-item" data-category="${category}">
                    ${category}
                    <ul class="list-group category-services"></ul>
                </li>`;
        $categoriesList.append(categoryHtml);
    }

    // Expandir categoría para mostrar servicios
    $categoriesList.on("click", ".category-item", function (e) {
    const category = $(this).data("category");
    const $servicesList = $(this).find(".category-services");

    // Evitar que el clic en la categoría cierre la lista si ya está expandida
    e.stopPropagation();

    if ($servicesList.is(":visible")) {
        $servicesList.slideUp();
    } else {
        // Colapsar todas las otras listas abiertas
        $(".category-services").slideUp();

        // Limpiar y mostrar servicios de la categoría seleccionada
        $servicesList.empty();
        servicesByCategory[category].forEach(service => {
            const serviceHtml = `<li class="list-group-item service-item">${service}</li>`;
            $servicesList.append(serviceHtml);
        });
        $servicesList.slideDown();
    }
});

// Cerrar las listas de servicios si se hace clic fuera de ellas
$(document).on("click", function (e) {
    if (!$(e.target).closest(".category-item").length) {
        $(".category-services").slideUp(); // Cerrar todas las listas abiertas
    }
});

    // Agregar servicio seleccionado desde categoría al input
    $categoriesList.on("click", ".service-item", function (e) {
        e.stopPropagation();


        // Eliminar la clase 'selected' de todos los servicios
        $(".service-item").removeClass("selected");

        // Agregar la clase 'selected' al servicio seleccionado
        $(this).addClass("selected");

        const service = $(this).text();
        $("#autocomplete-input").val(service).removeClass("is-invalid");
        $("#autocomplete-input").val(service).addClass("is-valid");
        updateCategoryTitle();
    });

    // Mostrar sugerencias al escribir
    $("#autocomplete-input").on("input", function () {
        const query = $(this).val().toLowerCase();
        const suggestions = allServicesFlat
                .filter(service => service.toLowerCase().includes(query))
                .slice(0, maxSuggestions);

        if (suggestions.length > 0 || query.length > 0) {
            suggestions.push("Otros servicios");
            $("#suggestions").empty().removeClass("d-none");
            suggestions.forEach(service => {
                $("#suggestions").append(`<li class="list-group-item suggestion-item">${service}</li>`);
            });
        } else {
            $("#suggestions").addClass("d-none");
        }
    });

    // Seleccionar sugerencia
    $("#suggestions").on("click", ".suggestion-item", function () {
        const service = $(this).text();
        $("#autocomplete-input").val(service).removeClass("is-invalid");
        $("#autocomplete-input").val(service).addClass("is-valid");
        $("#suggestions").addClass("d-none");
        updateCategoryTitle();
    });

    // Validar y borrar texto si no coincide
    $("#autocomplete-input").on("blur", function () {
        const value = $(this).val();
        if (value && !allServicesFlat.includes(value)) {
            $(this).val("").removeClass("is-valid");
            $(this).val("").addClass("is-invalid");
        } else if (value === "") {
            $(this).removeClass("is-invalid");
            $(this).removeClass("is-valid");
        } else {
            $(this).removeClass("is-invalid");
            $(this).addClass("is-valid");
        }
        setTimeout(() => $("#suggestions").addClass("d-none"), 200); // Evitar conflicto al seleccionar
    });

    // Mostrar modal con todos los servicios
    $("#view-all").on("click", function () {
        $("#servicesModal").modal("show");

        const $classifiedServices = $("#classified-services");
        $classifiedServices.empty();

        for (const [category, services] of Object.entries(servicesByCategory)) {
            const categoryHtml = `
                    <div class="col-md-6 mb-3">
                        <h5>${category}</h5>
                        <ul class="list-group">
                            ${services.map(service => `<li class="list-group-item modal-item">${service}</li>`).join("")}
                        </ul>
                    </div>`;
            $classifiedServices.append(categoryHtml);
        }
    });

    // Seleccionar servicio desde el modal
    $(document).on("click", ".modal-item", function () {
        $(".modal-item").removeClass("selected");
        $(this).addClass("selected");
        selectedService = $(this).text();
        $("#confirm-selection").prop("disabled", false);
    });

    // Confirmar selección del modal
    $("#confirm-selection").on("click", function () {
        if (selectedService) {
            $("#autocomplete-input").val(selectedService).removeClass("is-invalid");
            $("#autocomplete-input").val(selectedService).addClass("is-valid");
            $("#servicesModal").modal("hide");
            updateCategoryTitle();
        }
    });

    // Referencias a los elementos
    const autocompleteInput = document.getElementById("autocomplete-input");
    const dynamicDiv = document.getElementById("dynamic-div");

// Función para mostrar/ocultar el dynamic-div
    function toggleDynamicDiv() {
        if (autocompleteInput.classList.contains("is-valid")) {
            dynamicDiv.classList.remove("d-none"); // Mostrar
        } else if (autocompleteInput.classList.contains("is-invalid")) {
            dynamicDiv.classList.add("d-none"); // Ocultar
        } else {
            dynamicDiv.classList.add("d-none"); // Ocultar
        }
    }

// Configurar el MutationObserver para observar cambios en las clases del input
    const observer = new MutationObserver(() => {
        toggleDynamicDiv();
    });

// Opciones del observer: observar cambios en los atributos
    const observerConfig = {attributes: true, attributeFilter: ["class"]};

// Iniciar la observación en el elemento input
    observer.observe(autocompleteInput, observerConfig);

    // Referencias a los elementos
    const categoryTitle = document.getElementById("category-title");

// Función para actualizar el texto del <p>
    function updateCategoryTitle() {
        if (autocompleteInput.classList.contains("is-valid")) {
            categoryTitle.textContent = autocompleteInput.value.trim(); // Actualizar texto
        }
    }

// Borrar el texto si pierde la clase is-valid
    autocompleteInput.addEventListener("input", function () {
        if (!autocompleteInput.classList.contains("is-valid")) {
            categoryTitle.textContent = "Seleccione un servicio";
        }
    });
});