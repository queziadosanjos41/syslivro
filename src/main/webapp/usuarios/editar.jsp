<%@ page import="br.com.syslivro.controller.UsuarioController" %>
<%@ page import="br.com.syslivro.model.Usuario" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));

    UsuarioController controller = new UsuarioController();

    Usuario usuario = controller.buscarPorId(id);


    if ("POST".equalsIgnoreCase(request.getMethod())) {

        String nome = request.getParameter("nome");
        String email = request.getParameter("email");

        usuario.setNome(nome);
        usuario.setEmail(email);

        controller.atualizar(usuario);

        response.sendRedirect("listar.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Editar Usuário</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<header class="header">

    <nav>
        <a href="../index.jsp">Início</a>
        <a href="listar.jsp" class="active">Usuários</a>
        <a href="../generos/listar.jsp">Gêneros</a>
        <a href="../recomendacoes/listar.jsp">Recomendações</a>
    </nav>

</header>

<main class="form-container">

    <div class="form-header">

        <h1>Editar usuário</h1>

        <p>
            Altere os dados do usuário abaixo.
        </p>

    </div>


    <form method="post" class="form-card">

        <div class="user-edit-id">
            Usuário #<%= usuario.getId() %>
        </div>


        <div class="form-group">

            <label for="nome">
                Nome
            </label>

            <input
                type="text"
                id="nome"
                name="nome"
                value="<%= usuario.getNome() %>"
                required
            >

        </div>


        <div class="form-group">

            <label for="email">
                E-mail
            </label>

            <input
                type="email"
                id="email"
                name="email"
                value="<%= usuario.getEmail() %>"
                required
            >

        </div>


        <div class="form-actions">

            <a href="listar.jsp" class="btn-secondary">Cancelar</a>

            <button type="submit" class="btn-primary">Salvar alterações</button>

        </div>

    </form>

</main>


<footer>
    <p>© 2026 Sistema de Recomendações de Livros</p>
</footer>

</body>
</html>