<%@ page import="br.com.syslivro.controller.RecomendacaoController" %>
<%@ page import="br.com.syslivro.model.Recomendacao" %>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {

        int usuarioId = Integer.parseInt(
            request.getParameter("usuarioId")
        );

        int generoId = Integer.parseInt(
            request.getParameter("generoId")
        );

        String livroRecomendado =
            request.getParameter("livroRecomendado");


        Recomendacao recomendacao = new Recomendacao();

        recomendacao.setUsuarioId(usuarioId);
        recomendacao.setGeneroId(generoId);
        recomendacao.setLivroRecomendado(livroRecomendado);


        RecomendacaoController controller =
            new RecomendacaoController();

        controller.salvar(recomendacao);


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

    <title>Nova Recomendação</title>

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

        <h1>Cadastrar recomendação</h1>

        <p>
            Informe o usuário, o gênero e o livro recomendado.
        </p>

    </div>


    <form method="post" class="form-card">


        <div class="form-group">

            <label for="usuarioId">
                ID do usuário
            </label>

            <input
                type="number"
                id="usuarioId"
                name="usuarioId"
                placeholder="Ex.: 1"
                min="1"
                required
            >

            <small class="form-help">
                Informe o ID do usuário cadastrado.
            </small>

        </div>


        <div class="form-group">

            <label for="generoId">
                ID do gênero
            </label>

            <input
                type="number"
                id="generoId"
                name="generoId"
                placeholder="Ex.: 2"
                min="1"
                required
            >

            <small class="form-help">
                Informe o ID do gênero cadastrado.
            </small>

        </div>


        <div class="form-group">

            <label for="livroRecomendado">
                Livro recomendado
            </label>

            <input
                type="text"
                id="livroRecomendado"
                name="livroRecomendado"
                placeholder="Digite o nome do livro"
                maxlength="150"
                required
            >

        </div>


        <div class="form-actions">

            <a href="listar.jsp" class="btn-secondary">
                Cancelar
            </a>

            <button type="submit" class="btn-primary">
                Cadastrar recomendação
            </button>

        </div>


    </form>

</main>


<footer>
    <p>© 2026 Sistema de Recomendações de Livros</p>
</footer>


</body>

</html>