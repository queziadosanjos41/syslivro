<%@ page import="br.com.syslivro.controller.GeneroController" %>
<%@ page import="br.com.syslivro.model.Genero" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));

    GeneroController controller = new GeneroController();

    Genero genero = controller.buscarPorId(id);


    if ("POST".equalsIgnoreCase(request.getMethod())) {

        String nome = request.getParameter("nome");

        genero.setNome(nome);

        controller.atualizar(genero);

        response.sendRedirect("listar.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Editar Gênero</title>

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

        <a href="listar.jsp" class="active">
            Gêneros
        </a>

        <a href="../recomendacoes/listar.jsp">
            Recomendações
        </a>

    </nav>

</header>


<main class="form-container">

    <div class="form-header">

        <h1>Editar gênero</h1>

        <p>
            Altere o nome do gênero literário.
        </p>

    </div>


    <form method="post" class="form-card">

        <div class="user-edit-id">
            Gênero #<%= genero.getId() %>
        </div>


        <div class="form-group">

            <label for="nome">
                Nome do gênero
            </label>

            <input
                type="text"
                id="nome"
                name="nome"
                value="<%= genero.getNome() %>"
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