<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir Gênero</title>
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-4">
        <h1>Excluir Gênero</h1>
        <p class="mb-3">Tem certeza que deseja excluir o gênero <strong>${genero.nome}</strong>?</p>
        <form action="/generos/delete" method="post">
            <input type="hidden" name="id" value="${genero.id}" />
            <button type="submit" class="btn btn-danger">Confirmar</button>
            <a href="/generos/list" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>
</body>
</html>
