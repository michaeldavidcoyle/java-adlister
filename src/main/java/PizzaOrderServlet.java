import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "PizzaOrderServlet", urlPatterns = "/pizza-order")
public class PizzaOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String crust = request.getParameter("crust");
        String size = request.getParameter("size");
        String sauce = request.getParameter("sauce");
        String[] toppings = request.getParameterValues("toppings");
        String toppingsString = String.join(", ", toppings);
        String address = request.getParameter("address");

        System.out.printf("crust: %s%nsize: %s%nsauce: %s%ntoppings: %s%naddress: %s%n", crust, size, sauce, toppingsString, address);
    }
}
