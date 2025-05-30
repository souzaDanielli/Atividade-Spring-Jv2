<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Excluir Modo de Jogo</title>
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-4">
        <h1>Excluir Modo de Jogo</h1>
        <p class="mb-3">Tem certeza que deseja excluir o modo de jogo <strong>${modo.descricao}</strong>?</p>
        <form action="/modos/delete" method="post">
            <input type="hidden" name="id" value="${modo.id}" />
            <button type="submit" class="btn btn-danger">Confirmar</button>
            <a href="/modos/list" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>
</body>
</html>
