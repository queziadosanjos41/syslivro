<%@ page import="br.com.syslivro.controller.RecomendacaoController" %>
<%@ page import="br.com.syslivro.model.Recomendacao" %>

<%
    int id = Integer.parseInt(
        request.getParameter("id")
    );


    RecomendacaoController controller =
        new RecomendacaoController();


    Recomendacao recomendacao =
        controller.buscarPorId(id);


    if ("POST".equalsIgnoreCase(request.getMethod())) {

        int usuarioId = Integer.parseInt(
            request.getParameter("usuarioId")
        );

        int generoId = Integer.parseInt(
            request.getParameter("generoId")
        );

        String livroRecomendado =
            request.getParameter("livroRecomendado");


        recomendacao.setUsuarioId(usuarioId);
        recomendacao.setGeneroId(generoId);
        recomendacao.setLivroRecomendado(livroRecomendado);


        controller.atualizar(recomendacao);


        response.sendRedirect("listar.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Editar Recomendação</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>


<header class="header">


    <nav>

        <a href="../index.jsp">
            Início
        </a>

        <a href="../usuarios/listar.jsp">
            Usuários
        </a>

        <a href="../generos/listar.jsp">
            Gêneros
        </a>

        <a href="listar.jsp" class="active">
            Recomendações
        </a>

    </nav>

</header>


<main class="form-container">


    <div class="form-header">

        <span class="tag">
           EDIÇÃO
        </span>

        <h1>Editar recomendação</h1>

        <p>
            Altere os dados da recomendação.
        </p>

    </div>


    <form method="post" class="form-card">


        <div class="user-edit-id">
            Recomendação #<%= recomendacao.getId() %>
        </div>


        <div class="form-group">

            <label for="usuarioId">
                ID do usuário
            </label>

            <input
                type="number"
                id="usuarioId"
                name="usuarioId"
                value="<%= recomendacao.getUsuarioId() %>"
                min="1"
                required
            >

        </div>


        <div class="form-group">

            <label for="generoId">
                ID do gênero
            </label>

            <input
                type="number"
                id="generoId"
                name="generoId"
                value="<%= recomendacao.getGeneroId() %>"
                min="1"
                required
            >

        </div>


        <div class="form-group">

            <label for="livroRecomendado">
                Livro recomendado
            </label>

            <input
                type="text"
                id="livroRecomendado"
                name="livroRecomendado"
                value="<%= recomendacao.getLivroRecomendado() %>"
                maxlength="150"
                required
            >

        </div>


        <div class="form-actions">

            <a href="listar.jsp" class="btn-secondary">
               Cancelar
            </a>

            <button type="submit" class="btn-primary">
               Salvar alterações
            </button>

        </div>


    </form>

</main>


<footer>
    <p>© 2026 Sistema de Recomendações de Livros</p>
</footer>


</body>

</html>