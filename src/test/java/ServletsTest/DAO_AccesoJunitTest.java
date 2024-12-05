
package ServletsTest;

import Datos.DAO_Acceso;
import Utilitarios.Encriptacion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.junit.jupiter.api.BeforeEach;


import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
import static org.mockito.Mockito.*;
import org.mockito.Mockito;



public class DAO_AccesoJunitTest {
    
    private DAO_Acceso daoAcceso;
    private Connection connectionMock;
    private CallableStatement callableStatementMock;
    private ResultSet resultSetMock;
    private HttpServletRequest requestMock;
    private HttpSession sessionMock;
    
    @BeforeEach
    void setUp() throws Exception {
        daoAcceso = Mockito.spy(new DAO_Acceso());
        connectionMock = mock(Connection.class);
        callableStatementMock = mock(CallableStatement.class);
        resultSetMock = mock(ResultSet.class);
        requestMock = mock(HttpServletRequest.class);
        sessionMock = mock(HttpSession.class);

        doReturn(connectionMock).when(daoAcceso).Connected();
    }
    
    @Test
    void autenticarUsuario_CredencialesCorrectas_DeberiaDevolverTrue() throws Exception {
        
        when(connectionMock.prepareCall("{CALL sp_Login(?)}")).thenReturn(callableStatementMock);
        when(callableStatementMock.executeQuery()).thenReturn(resultSetMock);

        when(resultSetMock.next()).thenReturn(true); // Primer acceso
        when(resultSetMock.getString("Clave")).thenReturn(new Encriptacion().encode("password123"));
        when(requestMock.getSession()).thenReturn(sessionMock);

        boolean result = daoAcceso.autenticarUsuario(requestMock, "user@example.com", "password123");

        assertTrue(result);
        verify(sessionMock).setAttribute("id", anyString());
    }
    
    @Test
    void autenticarUsuario_CredencialesIncorrectas_DeberiaDevolverFalse() throws Exception {
        when(connectionMock.prepareCall("{CALL sp_Login(?)}")).thenReturn(callableStatementMock);
        when(callableStatementMock.executeQuery()).thenReturn(resultSetMock);

        when(resultSetMock.next()).thenReturn(false);

        boolean result = daoAcceso.autenticarUsuario(requestMock, "user@example.com", "password");

        assertFalse(result);
    }
}
