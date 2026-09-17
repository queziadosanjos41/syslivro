package br.com.syslivro.dao;

import br.com.syslivro.model.Genero;
import br.com.syslivro.util.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class GeneroDAOImpl implements GeneroDAO {

    @Override
    public void salvar(Genero genero) {

        String sql = "INSERT INTO generos (nome) VALUES (?)";

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, genero.getNome());

            stmt.executeUpdate();

        } catch (Exception e) {
            throw new RuntimeException("Erro ao salvar gênero", e);
        }
    }

    @Override
    public List<Genero> listar() {

        List<Genero> generos = new ArrayList<>();

        String sql = "SELECT * FROM generos";

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {

                Genero genero = new Genero();

                genero.setId(rs.getInt("id"));
                genero.setNome(rs.getString("nome"));

                generos.add(genero);
            }

        } catch (Exception e) {
            throw new RuntimeException("Erro ao listar gêneros", e);
        }

        return generos;
    }

    @Override
    public Genero buscarPorId(int id) {

        String sql = "SELECT * FROM generos WHERE id = ?";

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);

            try (ResultSet rs = stmt.executeQuery()) {

                if (rs.next()) {

                    Genero genero = new Genero();

                    genero.setId(rs.getInt("id"));
                    genero.setNome(rs.getString("nome"));

                    return genero;
                }
            }

        } catch (Exception e) {
            throw new RuntimeException("Erro ao buscar gênero", e);
        }

        return null;
    }

    @Override
    public void atualizar(Genero genero) {

        String sql = "UPDATE generos SET nome = ? WHERE id = ?";

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, genero.getNome());
            stmt.setInt(2, genero.getId());

            stmt.executeUpdate();

        } catch (Exception e) {
            throw new RuntimeException("Erro ao atualizar gênero", e);
        }
    }

    @Override
    public void excluir(int id) {

        String sql = "DELETE FROM generos WHERE id = ?";

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);

            stmt.executeUpdate();

        } catch (Exception e) {
            throw new RuntimeException("Erro ao excluir gênero", e);
        }
    }
}