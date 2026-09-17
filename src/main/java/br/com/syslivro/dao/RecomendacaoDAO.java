package br.com.syslivro.dao;

import br.com.syslivro.model.Recomendacao;
import java.util.List;

public interface RecomendacaoDAO {

    void salvar(Recomendacao recomendacao);

    List<Recomendacao> listar();

    Recomendacao buscarPorId(int id);

    void atualizar(Recomendacao recomendacao);

    void excluir(int id);
}