package br.com.syslivro.service;

import br.com.syslivro.dao.GeneroDAO;
import br.com.syslivro.dao.GeneroDAOImpl;
import br.com.syslivro.model.Genero;
import java.util.List;

public class GeneroService {

    private GeneroDAO generoDAO;

    public GeneroService() {
        generoDAO = new GeneroDAOImpl();
    }

    public void salvar(Genero genero) {
        generoDAO.salvar(genero);
    }

    public List<Genero> listar() {
        return generoDAO.listar();
    }

    public Genero buscarPorId(int id) {
        return generoDAO.buscarPorId(id);
    }

    public void atualizar(Genero genero) {
        generoDAO.atualizar(genero);
    }

    public void excluir(int id) {
        generoDAO.excluir(id);
    }
}