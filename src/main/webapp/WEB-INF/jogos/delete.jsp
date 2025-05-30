<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Excluir Jogo</title>
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
<div class="container mt-4">
    <h1>Excluir Jogo</h1>
    <p>Tem certeza que deseja excluir o jogo <strong>${jogo.titulo}</strong>?</p>
    <form action="/jogos/delete" method="post">
        <input type="hidden" name="id" value="${jogo.id}" />
        <button type="submit" class="btn btn-danger">Confirmar</button>
        <a href="/jogos/list" class="btn btn-secondary">Cancelar</a>
    </form>
</div>
</body>
</html>
