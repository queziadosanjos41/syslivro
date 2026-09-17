<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sistema de Recomendações de Livros</title>

    <link rel="stylesheet" href="css/style.css">
</head>

<body>

    <header class="header">

        <nav>
            <a href="index.jsp">Início</a>
            <a href="usuarios/listar.jsp">Usuários</a>
            <a href="generos/listar.jsp">Gêneros</a>
            <a href="recomendacoes/listar.jsp">Recomendações</a>
        </nav>
    </header>


    <main>

        <section class="hero">

            <div class="hero-text">

                <span class="tag">SISTEMA DE LIVROS</span>

                <h1>
                    Encontre sua próxima grande leitura.
                </h1>

                <p>
                    Cadastre usuários, organize gêneros e
                    acompanhe recomendações de livros em
                    um só lugar.
                </p>

            </div>

        </section>


        <section class="menu">

            <h2>O que você deseja fazer?</h2>

            <div class="cards">

                <a href="usuarios/listar.jsp" class="card">

                    <div>
                        <h3>Usuários</h3>

                        <p>
                            Cadastre e gerencie os usuários
                            do sistema.
                        </p>
                    </div>

                </a>


                <a href="generos/listar.jsp" class="card">

                    <div>
                        <h3>Gêneros</h3>

                        <p>
                            Organize os gêneros literários
                            disponíveis.
                        </p>
                    </div>

                </a>


                <a href="recomendacoes/listar.jsp" class="card">

                    <div>
                        <h3>Recomendações</h3>

                        <p>
                            Veja e gerencie as recomendações
                            de livros.
                        </p>
                    </div>

                </a>

            </div>

        </section>

    </main>


    <footer>
        <p>© 2026 Sistema de Recomendações de Livros</p>
    </footer>

</body>
</html>