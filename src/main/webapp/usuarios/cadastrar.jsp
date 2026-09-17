<%@ page import="br.com.syslivro.controller.UsuarioController" %>
<%@ page import="br.com.syslivro.model.Usuario" %>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {

        String nome = request.getParameter("nome");
        String email = request.getParameter("email");

        Usuario usuario = new Usuario();
        usuario.setNome(nome);
        usuario.setEmail(email);

        UsuarioController controller = new UsuarioController();
        controller.salvar(usuario);

        response.sendRedirect("listar.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Cadastrar Usuário</title>

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

        <span class="tag">NOVO USUÁRIO</span>

        <h1>Cadastrar usuário</h1>

        <p>
            Preencha os dados abaixo para cadastrar um novo usuário.
        </p>

    </div>


    <form method="post" class="form-card">

        <div class="form-group">

            <label for="nome">
                Nome
            </label>

            <input
                type="text"
                id="nome"
                name="nome"
                placeholder="Digite o nome do usuário"
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
                placeholder="Digite o e-mail do usuário"
                required
            >

        </div>


        <div class="form-actions">

            <a href="listar.jsp" class="btn-secondary">Cancelar</a>

            <button type="submit" class="btn-primary">Cadastrar usuário</button>

        </div>

    </form>

</main>


<footer>
    <p>© 2026 Sistema de Recomendações de Livros</p>
</footer>

</body>
</html>