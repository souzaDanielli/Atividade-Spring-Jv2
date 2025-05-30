<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Novo Modo de Jogo</title>
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-4">
        <h1>Inserir Modo de Jogo</h1>
        <form action="/modos/insert" method="post">
            <div class="mb-3">
                <label class="form-label">Descrição:</label>
                <input type="text" name="descricao" class="form-control" required />
            </div>
            <button type="submit" class="btn btn-success">Salvar</button>
            <a href="/modos/list" class="btn btn-secondary">Voltar</a>
        </form>
    </div>
</body>
</html>
