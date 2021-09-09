import java.sql.*;

import com.mysql.cj.jdbc.Driver;

import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            System.out.printf("Oops, something went wrong: %s%n", e.getMessage());
            e.printStackTrace();
        }
    }

    @Override
    public List<Ad> all() {
        String selectQuery = "select * from ads";
        List<Ad> ads = new ArrayList<>();

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(selectQuery);

            while (resultSet.next()) {
                ads.add(new Ad(
                    resultSet.getLong("userId"),
                    resultSet.getString("title"),
                    resultSet.getString("description")
                );
            }

            return ads;
        } catch (SQLException e) {
            System.out.printf("Oops, something went wrong: %s%n", e.getMessage());
            e.printStackTrace();
        }
    }

    @Override
    public Long insert(Ad ad) {
        String insertQuery = String.format(
                "insert into ads (id, user_id, title, description) values (%d, %d, '%s', '%s')",
                ad.getId(),
                ad.getUserId(),
                ad.getTitle(),
                ad.getDescription()
        );

        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(insertQuery, statement.RETURN_GENERATED_KEYS);

            ResultSet resultSet = statement.getGeneratedKeys();

            if (resultSet.next()) {
                return resultSet.getLong(1);
            }
        } catch (SQLException e) {
            System.out.printf("Oops, something went wrong: %s%n", e.getMessage());
            e.printStackTrace();
        }
    }
}
