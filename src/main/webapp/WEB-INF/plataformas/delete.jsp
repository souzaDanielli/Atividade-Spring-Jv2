<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir Plataforma</title>
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-4">
        <h1>Excluir Plataforma</h1>
        <p class="mb-3">Tem certeza que deseja excluir a plataforma <strong>${plataforma.descricao}</strong>?</p>
        <form action="/plataformas/delete" method="post">
            <input type="hidden" name="id" value="${plataforma.id}" />
            <button type="submit" class="btn btn-danger">Confirmar</button>
            <a href="/plataformas/list" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>
</body>
</html>
