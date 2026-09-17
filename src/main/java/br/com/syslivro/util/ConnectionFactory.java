package br.com.syslivro.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

    public static Connection getConnection() {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            // Verifica se estamos usando as variáveis do Render
            String host = System.getenv("DB_HOST");

            if (host != null && !host.isEmpty()) {

                // BANCO DA AIVEN / RENDER

                String port = System.getenv("DB_PORT");
                String database = System.getenv("DB_NAME");
                String user = System.getenv("DB_USER");
                String password = System.getenv("DB_PASSWORD");

                String url = "jdbc:mysql://" + host + ":" + port
                        + "/" + database
                        + "?sslMode=REQUIRED";

                System.out.println("Conectando ao banco da Aiven...");

                return DriverManager.getConnection(
                        url,
                        user,
                        password
                );

            } else {

                // BANCO LOCAL

                String url =
                        "jdbc:mysql://localhost:3306/sistema_livros";

                String user = "root";

                String password = "Aether@2626";

                System.out.println("Conectando ao banco local...");

                return DriverManager.getConnection(
                        url,
                        user,
                        password
                );
            }

        } catch (Exception e) {

            System.out.println("ERRO NO CONNECTION FACTORY:");
            e.printStackTrace();

            throw new RuntimeException(
                    "Erro ao conectar ao banco",
                    e
            );
        }
    }
}