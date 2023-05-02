import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/register3")
public class ManagerCustomerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CustomerData customer;

    public void init() {
    	customer = new CustomerData();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");

       Customer cust = new Customer();
       cust.setFirst_name(first_name);
       cust.setLast_name(last_name);
       cust.setAge(age);
       cust.setGender(gender);
       cust.setContact(contact);
       cust.setEmail(email);
       int result=0;
        try {
            result=customer.registerUser(cust);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        if(result>0)
        response.sendRedirect("ManagerCustomerAdd.jsp");
    }
}