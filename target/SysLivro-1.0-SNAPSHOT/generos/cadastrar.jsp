<%@ page import="br.com.syslivro.controller.GeneroController" %>
<%@ page import="br.com.syslivro.model.Genero" %>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {

        String nome = request.getParameter("nome");

        Genero genero = new Genero();
        genero.setNome(nome);

        GeneroController controller = new GeneroController();

        controller.salvar(genero);

        response.sendRedirect("listar.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Cadastrar Gênero</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<header class="header">

    <nav>

        <a href="../index.jsp">Início</a>

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

        <h1>Cadastrar gênero</h1>

        <p>
            Adicione um novo gênero literário ao sistema.
        </p>

    </div>


    <form method="post" class="form-card">

        <div class="form-group">

            <label for="nome">
                Nome do gênero
            </label>

            <input
                type="text"
                id="nome"
                name="nome"
                placeholder="Ex.: Ficção, Romance, Fantasia..."
                required
            >

        </div>


        <div class="form-actions">

            <a href="listar.jsp" class="btn-secondary">
                Cancelar
            </a>

            <button type="submit" class="btn-primary">
                Cadastrar gênero
            </button>

        </div>

    </form>

</main>


<footer>
    <p>© 2026 Sistema de Recomendações de Livros</p>
</footer>

</body>

</html>