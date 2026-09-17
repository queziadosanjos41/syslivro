package br.com.syslivro.dao;

import br.com.syslivro.model.Recomendacao;
import br.com.syslivro.util.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RecomendacaoDAOImpl implements RecomendacaoDAO {

    @Override
    public void salvar(Recomendacao recomendacao) {

        String sql = "INSERT INTO recomendacoes "
                + "(usuario_id, genero_id, livro_recomendado) "
                + "VALUES (?, ?, ?)";

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, recomendacao.getUsuarioId());
            stmt.setInt(2, recomendacao.getGeneroId());
            stmt.setString(3, recomendacao.getLivroRecomendado());

            stmt.executeUpdate();

        } catch (Exception e) {
            throw new RuntimeException(
                    "Erro ao salvar recomendação", e);
        }
    }

    @Override
    public List<Recomendacao> listar() {

        List<Recomendacao> recomendacoes = new ArrayList<>();

        String sql = "SELECT * FROM recomendacoes";

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {

                Recomendacao recomendacao = new Recomendacao();

                recomendacao.setId(rs.getInt("id"));
                recomendacao.setUsuarioId(rs.getInt("usuario_id"));
                recomendacao.setGeneroId(rs.getInt("genero_id"));
                recomendacao.setLivroRecomendado(
                        rs.getString("livro_recomendado"));

                recomendacoes.add(recomendacao);
            }

        } catch (Exception e) {
            throw new RuntimeException(
                    "Erro ao listar recomendações", e);
        }

        return recomendacoes;
    }

    @Override
    public Recomendacao buscarPorId(int id) {

        String sql =
                "SELECT * FROM recomendacoes WHERE id = ?";

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);

            try (ResultSet rs = stmt.executeQuery()) {

                if (rs.next()) {

                    Recomendacao recomendacao =
                            new Recomendacao();

                    recomendacao.setId(
                            rs.getInt("id"));

                    recomendacao.setUsuarioId(
                            rs.getInt("usuario_id"));

                    recomendacao.setGeneroId(
                            rs.getInt("genero_id"));

                    recomendacao.setLivroRecomendado(
                            rs.getString("livro_recomendado"));

                    return recomendacao;
                }
            }

        } catch (Exception e) {
            throw new RuntimeException(
                    "Erro ao buscar recomendação", e);
        }

        return null;
    }

    @Override
    public void atualizar(Recomendacao recomendacao) {

        String sql =
                "UPDATE recomendacoes "
                + "SET usuario_id = ?, genero_id = ?, "
                + "livro_recomendado = ? "
                + "WHERE id = ?";

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, recomendacao.getUsuarioId());
            stmt.setInt(2, recomendacao.getGeneroId());
            stmt.setString(
                    3,
                    recomendacao.getLivroRecomendado());
            stmt.setInt(4, recomendacao.getId());

            stmt.executeUpdate();

        } catch (Exception e) {
            throw new RuntimeException(
                    "Erro ao atualizar recomendação", e);
        }
    }

    @Override
    public void excluir(int id) {

        String sql =
                "DELETE FROM recomendacoes WHERE id = ?";

        try (Connection conn = ConnectionFactory.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);

            stmt.executeUpdate();

        } catch (Exception e) {
            throw new RuntimeException(
                    "Erro ao excluir recomendação", e);
        }
    }
}