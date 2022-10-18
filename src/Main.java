import java.sql.Connection;
import java.sql.DriverManager;

public class Main {
    public static void main(String[] args) {
//        System.out.println("Hello world!");

        try {
            String bdURL = "jdbc:postgresql://db:5432/";
            String user = "postgres";
            String password = "*****";

            Connection conn = DriverManager.getConnection(bdURL, user, password);
            if (conn != null) {
                System.out.println("Connected");
            }
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
