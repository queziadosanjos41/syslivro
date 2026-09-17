package br.com.syslivro.service;

import br.com.syslivro.dao.RecomendacaoDAO;
import br.com.syslivro.dao.RecomendacaoDAOImpl;
import br.com.syslivro.model.Recomendacao;
import java.util.List;

public class RecomendacaoService {

    private RecomendacaoDAO recomendacaoDAO;

    public RecomendacaoService() {
        recomendacaoDAO = new RecomendacaoDAOImpl();
    }

    public void salvar(Recomendacao recomendacao) {
        recomendacaoDAO.salvar(recomendacao);
    }

    public List<Recomendacao> listar() {
        return recomendacaoDAO.listar();
    }

    public Recomendacao buscarPorId(int id) {
        return recomendacaoDAO.buscarPorId(id);
    }

    public void atualizar(Recomendacao recomendacao) {
        recomendacaoDAO.atualizar(recomendacao);
    }

    public void excluir(int id) {
        recomendacaoDAO.excluir(id);
    }
}