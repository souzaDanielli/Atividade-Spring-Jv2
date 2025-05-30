<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Gênero</title>
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-4">
        <h1>Editar Gênero</h1>
        <form action="/generos/update" method="post">
            <input type="hidden" name="id" value="${genero.id}" />
            <div class="mb-3">
                <label class="form-label">Nome:</label>
                <input type="text" name="nome" value="${genero.nome}" class="form-control" required />
            </div>
            <button type="submit" class="btn btn-success">Atualizar</button>
            <a href="/generos/list" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>
</body>
</html>
