
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CustomerData {

    private static final String INSERT_USERS_SQL = null;
	private Connection connection;
	public int registerUser(Customer us) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO customer_details" +
            "  (first_name, last_name, age, gender, contact, email) VALUES " +
            " ( ?, ?, ?, ?,?,?);";

        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/project", "root", "password-1");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
          
            preparedStatement.setString(1, us.getFirst_name());
            preparedStatement.setString(2,us.getLast_name());
            preparedStatement.setString(3, us.getAge());
            preparedStatement.setString(4,us.getGender());
            preparedStatement.setString(5, us.getContact());
            preparedStatement.setString(6,us.getEmail());

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
	}
	private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
