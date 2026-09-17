package br.com.syslivro.controller;

import br.com.syslivro.model.Recomendacao;
import br.com.syslivro.service.RecomendacaoService;
import java.util.List;

public class RecomendacaoController {

    private RecomendacaoService recomendacaoService;

    public RecomendacaoController() {
        recomendacaoService = new RecomendacaoService();
    }

    public void salvar(Recomendacao recomendacao) {
        recomendacaoService.salvar(recomendacao);
    }

    public List<Recomendacao> listar() {
        return recomendacaoService.listar();
    }

    public Recomendacao buscarPorId(int id) {
        return recomendacaoService.buscarPorId(id);
    }

    public void atualizar(Recomendacao recomendacao) {
        recomendacaoService.atualizar(recomendacao);
    }

    public void excluir(int id) {
        recomendacaoService.excluir(id);
    }
}