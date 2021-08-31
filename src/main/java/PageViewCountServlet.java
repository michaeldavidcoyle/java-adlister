import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/count")
public class PageViewCountServlet extends HttpServlet {
    private int count = 0;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        count++;

        response.getWriter().printf("Page views: %d", count);
    }
}
