<%@ page import="br.com.syslivro.controller.UsuarioController" %>
<%@ page import="br.com.syslivro.model.Usuario" %>
<%@ page import="java.util.List" %>

<%
    UsuarioController controller = new UsuarioController();
    List<Usuario> usuarios = controller.listar();
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Usuários - SysLivro</title>

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


<main class="page-container">

    <div class="page-header">

        <div>

            <h1>Usuários</h1>

            <p>
                Cadastre e gerencie os usuários do sistema.
            </p>
        </div>

        <a href="cadastrar.jsp" class="btn-primary">Novo usuário</a>

    </div>


    <section class="table-card">

        <div class="table-top">

            <h2>Usuários cadastrados</h2>

            <span class="counter">
                <%= usuarios.size() %> usuário(s)
            </span>

        </div>


        <% if (usuarios.isEmpty()) { %>

            <div class="empty-state">

                <h3>Nenhum usuário cadastrado</h3>

                <p>
                    Comece cadastrando o primeiro usuário.
                </p>

                <a href="cadastrar.jsp" class="btn-primary">
                    Cadastrar usuário
                </a>

            </div>

        <% } else { %>

            <div class="table-wrapper">

                <table>

                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>E-mail</th>
                            <th>Ações</th>
                        </tr>
                    </thead>

                    <tbody>

                    <% for (Usuario usuario : usuarios) { %>

                        <tr>

                            <td>
                                <span class="id-badge">
                                    #<%= usuario.getId() %>
                                </span>
                            </td>

                            <td>
                                <strong>
                                    <%= usuario.getNome() %>
                                </strong>
                            </td>

                            <td>
                                <span class="email">
                                    <%= usuario.getEmail() %>
                                </span>
                            </td>

                            <td>

                                <div class="actions">

                                    <a href="editar.jsp?id=<%= usuario.getId() %>"
                                       class="btn-edit">Editar</a>

                                    <a href="excluir.jsp?id=<%= usuario.getId() %>"
                                       class="btn-delete"
                                       onclick="return confirm('Deseja realmente excluir este usuário?');">Excluir</a>

                                </div>

                            </td>

                        </tr>

                    <% } %>

                    </tbody>

                </table>

            </div>

        <% } %>

    </section>

</main>


<footer>
    <p>© 2026 Sistema de Recomendações de Livros</p>
</footer>

</body>
</html>