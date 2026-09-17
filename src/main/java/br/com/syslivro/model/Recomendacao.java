package br.com.syslivro.model;

public class Recomendacao {

    private int id;
    private int usuarioId;
    private int generoId;
    private String livroRecomendado;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(int usuarioId) {
        this.usuarioId = usuarioId;
    }

    public int getGeneroId() {
        return generoId;
    }

    public void setGeneroId(int generoId) {
        this.generoId = generoId;
    }

    public String getLivroRecomendado() {
        return livroRecomendado;
    }

    public void setLivroRecomendado(String livroRecomendado) {
        this.livroRecomendado = livroRecomendado;
    }

}