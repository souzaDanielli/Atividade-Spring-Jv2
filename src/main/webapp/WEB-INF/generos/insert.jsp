<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Novo Gênero</title>
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-4">
        <h1>Inserir Gênero</h1>
        <form action="/generos/insert" method="post">
            <div class="mb-3">
                <label for="nome" class="form-label">Nome:</label>
                <input type="text" name="nome" class="form-control" required />
            </div>
            <button type="submit" class="btn btn-success">Salvar</button>
            <a href="/generos/list" class="btn btn-secondary">Voltar</a>
        </form>
    </div>
</body>
</html>
