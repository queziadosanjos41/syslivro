package br.com.syslivro.service;

import br.com.syslivro.dao.UsuarioDAO;
import br.com.syslivro.dao.UsuarioDAOImpl;
import br.com.syslivro.model.Usuario;
import java.util.List;

public class UsuarioService {

    private UsuarioDAO usuarioDAO;

    public UsuarioService() {
        usuarioDAO = new UsuarioDAOImpl();
    }

    public void salvar(Usuario usuario) {
        usuarioDAO.salvar(usuario);
    }

    public List<Usuario> listar() {
        return usuarioDAO.listar();
    }

    public Usuario buscarPorId(int id) {
        return usuarioDAO.buscarPorId(id);
    }

    public void atualizar(Usuario usuario) {
        usuarioDAO.atualizar(usuario);
    }

    public void excluir(int id) {
        usuarioDAO.excluir(id);
    }
}