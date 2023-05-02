import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/register")
public class UserServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private USerData userData;

    public void init() {
    	userData = new USerData();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");

       user k = new user();
       k.setFirstName(firstName);
       k.setLastName(lastName);
       k.setUsername(username);
       k.setPassword(password);
       k.setContact(contact);
       k.setAddress(address);
       int result=0;
        try {
            result=userData.registerUser(k);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        if(result>0)
        response.sendRedirect("UserDetails.jsp");
    }
}