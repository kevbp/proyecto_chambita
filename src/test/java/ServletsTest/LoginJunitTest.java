
package ServletsTest;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

public class LoginJunitTest {
    
    @Test
    void testLoginJspRender() throws ServletException, IOException {

        HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
        HttpServletResponse response = Mockito.mock(HttpServletResponse.class);
        RequestDispatcher dispatcher = Mockito.mock(RequestDispatcher.class);

        Mockito.when(request.getRequestDispatcher("Login.jsp")).thenReturn(dispatcher);

        request.getRequestDispatcher("Login.jsp").forward(request, response);

        Mockito.verify(request).getRequestDispatcher("Login.jsp");
        Mockito.verify(dispatcher).forward(request, response);
    }
    
}
