import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/register4")
public class InventoryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private InventoryData inventory;

    public void init() {
    	inventory = new InventoryData();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String product_type = request.getParameter("product_type");
        String product_name = request.getParameter("product_name");
        String product_quantity = request.getParameter("product_quantity");
        String product_price = request.getParameter("product_price");
      
       Inventory cust = new Inventory();
       cust.setProduct_type(product_type);
       cust.setProduct_name(product_name);
       cust.setProduct_quantity(product_quantity);
       cust.setProduct_price(product_price);
       int result=0;
        try {
            result=inventory.Inventory(cust);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        if(result>0)
        response.sendRedirect("MangerInventory.jsp");
    }
}

