
package ServletsTest;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

public class RegistrarJunitTest {
    
    @Test
    void testRegistrarJspRender() throws ServletException, IOException {
        HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
        HttpServletResponse response = Mockito.mock(HttpServletResponse.class);
        RequestDispatcher dispatcher = Mockito.mock(RequestDispatcher.class);

        Mockito.when(request.getParameter("txtNombre")).thenReturn("Juan");
        Mockito.when(request.getParameter("txtEmail")).thenReturn("juan@example.com");
        Mockito.when(request.getParameter("txtClave")).thenReturn("123456");
        Mockito.when(request.getRequestDispatcher("Registrar.jsp")).thenReturn(dispatcher);

        request.getRequestDispatcher("Registrar.jsp").forward(request, response);

        Mockito.verify(request).getRequestDispatcher("Registrar.jsp");
        Mockito.verify(dispatcher).forward(request, response);
        Mockito.verify(request).getParameter("txtNombre");
        Mockito.verify(request).getParameter("txtEmail");
        Mockito.verify(request).getParameter("txtClave");
    }
    
}
