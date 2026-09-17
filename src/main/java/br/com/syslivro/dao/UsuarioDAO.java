package br.com.syslivro.dao;

import br.com.syslivro.model.Usuario;
import java.util.List;

public interface UsuarioDAO {

    void salvar(Usuario usuario);

    List<Usuario> listar();

    Usuario buscarPorId(int id);

    void atualizar(Usuario usuario);

    void excluir(int id);
}