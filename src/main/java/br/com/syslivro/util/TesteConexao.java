package br.com.syslivro.util;

import java.sql.Connection;

public class TesteConexao {

    public static void main(String[] args) {

        try {

            Connection conn =
                    ConnectionFactory.getConnection();

            if (conn != null) {

                System.out.println(
                        "Conectado com sucesso!"
                );

                conn.close();
            }

        } catch (Exception e) {

            System.out.println(
                    "Erro: " + e.getMessage()
            );

        }

    }

}