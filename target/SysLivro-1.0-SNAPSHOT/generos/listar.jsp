<%@ page import="br.com.syslivro.controller.GeneroController" %>
<%@ page import="br.com.syslivro.model.Genero" %>
<%@ page import="java.util.List" %>

<%
    GeneroController controller = new GeneroController();
    List<Genero> generos = controller.listar();
%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Gêneros</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<header class="header">

    <nav>
        <a href="../index.jsp">Início</a>
        <a href="../usuarios/listar.jsp">Usuários</a>
        <a href="listar.jsp" class="active">Gêneros</a>
        <a href="../recomendacoes/listar.jsp">Recomendações</a>
    </nav>

</header>


<main class="page-container">

    <div class="page-header">

        <div>

            <h1>Gêneros</h1>

            <p>
                Cadastre e organize os gêneros literários.
            </p>

        </div>

        <a href="cadastrar.jsp" class="btn-primary">Novo gênero</a>

    </div>


    <section class="table-card">

        <div class="table-top">

            <h2>Gêneros cadastrados</h2>

            <span class="counter">
                <%= generos.size() %> gênero(s)
            </span>

        </div>


        <% if (generos.isEmpty()) { %>

            <div class="empty-state">

                <h3>Nenhum gênero cadastrado</h3>

                <p>
                    Comece cadastrando o primeiro gênero literário.
                </p>

                <a href="cadastrar.jsp" class="btn-primary">
                    Cadastrar gênero
                </a>

            </div>

        <% } else { %>

            <div class="table-wrapper">

                <table>

                    <thead>

                        <tr>
                            <th>ID</th>
                            <th>Gênero</th>
                            <th>Ações</th>
                        </tr>

                    </thead>


                    <tbody>

                    <% for (Genero genero : generos) { %>

                        <tr>

                            <td>

                                <span class="id-badge">
                                    #<%= genero.getId() %>
                                </span>

                            </td>


                            <td>

                                <div class="genre-name">

                                    <strong>
                                        <%= genero.getNome() %>
                                    </strong>

                                </div>

                            </td>


                            <td>

                                <div class="actions">

                                    <a href="editar.jsp?id=<%= genero.getId() %>"
                                       class="btn-edit">Editar
                                    </a>

                                    <a href="excluir.jsp?id=<%= genero.getId() %>"
                                       class="btn-delete"
                                       onclick="return confirm('Deseja realmente excluir este gênero?');">Excluir
                                    </a>

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