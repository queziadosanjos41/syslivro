package br.com.syslivro.controller;

import br.com.syslivro.model.Usuario;
import br.com.syslivro.service.UsuarioService;
import java.util.List;

public class UsuarioController {

    private UsuarioService usuarioService;

    public UsuarioController() {
        usuarioService = new UsuarioService();
    }

    public void salvar(Usuario usuario) {
        usuarioService.salvar(usuario);
    }

    public List<Usuario> listar() {
        return usuarioService.listar();
    }

    public Usuario buscarPorId(int id) {
        return usuarioService.buscarPorId(id);
    }

    public void atualizar(Usuario usuario) {
        usuarioService.atualizar(usuario);
    }

    public void excluir(int id) {
        usuarioService.excluir(id);
    }
}