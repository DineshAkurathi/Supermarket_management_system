
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InventoryData {

    private static final String INSERT_USERS_SQL1 = null;
	private Connection connection;
	public int Inventory(Inventory ca) throws ClassNotFoundException {
        String INSERT_USERS_SQL1 = "INSERT INTO inventory" +
            "  (product_type, product_name, product_quantity, product_price) VALUES " +
            " ( ?, ?, ?, ?);";

        int result = 0;
        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/project", "root", "password-1");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL1)) {
          
            preparedStatement.setString(1, ca.getProduct_type());
            preparedStatement.setString(2,ca.getProduct_name());
            preparedStatement.setString(3, ca.getProduct_quantity());
            preparedStatement.setString(4,ca.getProduct_price());
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
