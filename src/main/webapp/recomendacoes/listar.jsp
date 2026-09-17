<%@ page import="br.com.syslivro.controller.RecomendacaoController" %>
<%@ page import="br.com.syslivro.model.Recomendacao" %>
<%@ page import="java.util.List" %>

<%
    RecomendacaoController controller = new RecomendacaoController();
    List<Recomendacao> recomendacoes = controller.listar();
%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Recomendações</title>

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


<main class="page-container">

    <div class="page-header">

        <div>

            <h1>Recomendações</h1>

            <p>
                Gerencie as recomendações de livros do sistema.
            </p>

        </div>


        <a href="cadastrar.jsp" class="btn-primary">
           Nova recomendação
        </a>

    </div>


    <section class="table-card">

        <div class="table-top">

            <h2>Livros recomendados</h2>

            <span class="counter">
                <%= recomendacoes.size() %> recomendação(ões)
            </span>

        </div>


        <% if (recomendacoes.isEmpty()) { %>

            <div class="empty-state">

                <h3>Nenhuma recomendação cadastrada</h3>

                <p>
                    Comece cadastrando uma recomendação de livro.
                </p>

                <a href="cadastrar.jsp" class="btn-primary">
                    Cadastrar recomendação
                </a>

            </div>

        <% } else { %>


            <div class="table-wrapper">

                <table>

                    <thead>

                        <tr>
                            <th>ID</th>
                            <th>Usuário</th>
                            <th>Gênero</th>
                            <th>Livro recomendado</th>
                            <th>Ações</th>
                        </tr>

                    </thead>


                    <tbody>

                    <% for (Recomendacao recomendacao : recomendacoes) { %>

                        <tr>

                            <td>

                                <span class="id-badge">
                                    #<%= recomendacao.getId() %>
                                </span>

                            </td>


                            <td>

                                <span class="relation-badge">
                                    #<%= recomendacao.getUsuarioId() %>
                                </span>

                            </td>


                            <td>

                                <span class="relation-badge">
                                   #<%= recomendacao.getGeneroId() %>
                                </span>

                            </td>


                            <td>

                                <div class="book-name">

                                    <strong>
                                        <%= recomendacao.getLivroRecomendado() %>
                                    </strong>

                                </div>

                            </td>


                            <td>

                                <div class="actions">

                                    <a href="editar.jsp?id=<%= recomendacao.getId() %>"
                                       class="btn-edit">
                                        Editar
                                    </a>

                                    <a href="excluir.jsp?id=<%= recomendacao.getId() %>"
                                       class="btn-delete"
                                       onclick="return confirm('Deseja realmente excluir esta recomendação?');">
                                        Excluir
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