package br.com.syslivro.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

    private static final String URL =
            "jdbc:mysql://localhost:3306/sistema_livros";

    private static final String USER = "root";

    private static final String PASSWORD =
            "Aether@2626";

public static Connection getConnection() {

    try {

        Class.forName("com.mysql.cj.jdbc.Driver");

        System.out.println("CONNECTION FACTORY NOVO - TESTE 123");

        return DriverManager.getConnection(
                URL,
                USER,
                PASSWORD
        );

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