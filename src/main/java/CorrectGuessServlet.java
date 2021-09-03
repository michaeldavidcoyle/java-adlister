import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CorrectGuessServlet", value = "/correct")
public class CorrectGuessServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("message", "win");
        request.getRequestDispatcher("/guess-outcome.jsp").forward(request, response);
    }
}
