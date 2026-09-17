package br.com.syslivro.dao;

import br.com.syslivro.model.Usuario;

public class TesteUsuarioDAO {

    public static void main(String[] args) {

        Usuario usuario = new Usuario();


        usuario.setNome("William Afton");
        usuario.setEmail("agonia@email.com");

        UsuarioDAO dao = new UsuarioDAOImpl();

        dao.salvar(usuario);

        System.out.println("Usuário cadastrado com sucesso!");

    }
}