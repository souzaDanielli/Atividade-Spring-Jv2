<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Modo de Jogo</title>
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-4">
        <h1>Editar Modo de Jogo</h1>
        <form action="/modos/update" method="post">
            <input type="hidden" name="id" value="${modo.id}" />
            <div class="mb-3">
                <label class="form-label">Descrição:</label>
                <input type="text" name="descricao" value="${modo.descricao}" class="form-control" required />
            </div>
            <button type="submit" class="btn btn-success">Atualizar</button>
            <a href="/modos/list" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>
</body>
</html>
