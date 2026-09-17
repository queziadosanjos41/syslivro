package br.com.syslivro.dao;

import br.com.syslivro.model.Genero;
import java.util.List;

public interface GeneroDAO {

    void salvar(Genero genero);

    List<Genero> listar();

    Genero buscarPorId(int id);

    void atualizar(Genero genero);

    void excluir(int id);
}