import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/register1")
public class CashierServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CashierData CashierData;

    public void init() {
    	CashierData = new CashierData();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String user_name = request.getParameter("user_name");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");

       Cashier k = new Cashier();
       k.setFirst_name(first_name);
       k.setLast_name(last_name);
       k.setUser_name(user_name);
       k.setPassword(password);
       k.setContact(contact);
       k.setAddress(address);
       int result=0;
        try {
            result=CashierData.Cashier(k);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        if(result>0)
        response.sendRedirect("CashierDetails.jsp");
    }
}