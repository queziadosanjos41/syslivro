package br.com.syslivro.controller;

import br.com.syslivro.model.Genero;
import br.com.syslivro.service.GeneroService;
import java.util.List;

public class GeneroController {

    private GeneroService generoService;

    public GeneroController() {
        generoService = new GeneroService();
    }

    public void salvar(Genero genero) {
        generoService.salvar(genero);
    }

    public List<Genero> listar() {
        return generoService.listar();
    }

    public Genero buscarPorId(int id) {
        return generoService.buscarPorId(id);
    }

    public void atualizar(Genero genero) {
        generoService.atualizar(genero);
    }

    public void excluir(int id) {
        generoService.excluir(id);
    }
}