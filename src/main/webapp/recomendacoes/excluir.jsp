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

        controller.excluir(id);

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

    <title>Excluir Recomendação</title>

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


    <div class="delete-card">


        <h1>
            Excluir recomendação?
        </h1>


        <p>
            Você está prestes a excluir a recomendação:
        </p>


        <div class="user-preview">


            <strong>
                <%= recomendacao.getLivroRecomendado() %>
            </strong>


            <span>
                Usuário #<%= recomendacao.getUsuarioId() %>
                ·
                Gênero #<%= recomendacao.getGeneroId() %>
            </span>


        </div>


        <p class="warning">
            Essa ação não poderá ser desfeita.
        </p>


        <form method="post">


            <div class="form-actions">


                <a href="listar.jsp"
                   class="btn-secondary">
                    Cancelar
                </a>


                <button
                    type="submit"
                    class="btn-delete-large">

                    Sim, excluir

                </button>


            </div>


        </form>


    </div>

</main>


<footer>
    <p>© 2026 Sistema de Recomendações de Livros</p>
</footer>


</body>

</html>