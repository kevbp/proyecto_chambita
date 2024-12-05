
package ServletsTest;

import Datos.DAO_Cliente;
import Entidades.Solicitud;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.List;
import org.junit.jupiter.api.BeforeEach;

import org.mockito.Mockito;
import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class DAO_ClienteJunitTest {
    
    private DAO_Cliente daoCliente;
    private Connection connectionMock;
    private CallableStatement callableStatementMock;
    private ResultSet resultSetMock;
    
    @BeforeEach
    void setUp() throws Exception {
        daoCliente = Mockito.spy(new DAO_Cliente());
        connectionMock = mock(Connection.class);
        callableStatementMock = mock(CallableStatement.class);
        resultSetMock = mock(ResultSet.class);

        doReturn(connectionMock).when(daoCliente).Connected();
    }
    
    @Test
    void listarMisSolicitudes_DevuelveListaCorrecta() throws Exception {
        when(connectionMock.prepareCall("{CALL sp_Listar_MisSolicitudes(?)}")).thenReturn(callableStatementMock);
        when(callableStatementMock.executeQuery()).thenReturn(resultSetMock);

        when(resultSetMock.next()).thenReturn(true, true, false); // Dos filas de resultados
        when(resultSetMock.getString("Titulo")).thenReturn("Titulo 1", "Titulo 2");
        when(resultSetMock.getString("Descripcion")).thenReturn("Descripcion 1", "Descripcion 2");

        List<Solicitud> result = daoCliente.listarMisSolicitudes(1);

        assertEquals(2, result.size());
        assertEquals("Titulo 1", result.get(0).getTitulo());
        assertEquals("Titulo 2", result.get(1).getTitulo());
    }
}
