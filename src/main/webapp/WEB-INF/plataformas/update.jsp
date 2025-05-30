<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Plataforma</title>
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-4">
        <h1>Editar Plataforma</h1>
        <form action="/plataformas/update" method="post">
            <input type="hidden" name="id" value="${plataforma.id}" />
            <div class="mb-3">
                <label class="form-label">Descrição:</label>
                <input type="text" name="descricao" value="${plataforma.descricao}" class="form-control" required />
            </div>
            <button type="submit" class="btn btn-success">Atualizar</button>
            <a href="/plataformas/list" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>
</body>
</html>
