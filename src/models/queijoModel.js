var database = require("../database/config")

function mostrarQueijos() {
    var instrucaoSql = `
SELECT
	q.id,
    q.nome,
    q.foto,
    q.descricao,
    q.umidade,
    t.nome Tipo
FROM queijo q
JOIN tipo t on q.fkTipo = t.id
order by q.id;`

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql)
}

function favoritarQueijo(idUsuario, idQueijo) {
    var instrucaoSql = `
    insert into favorito (fkUsuario, fkQueijo) VALUES (?,?)`

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql, [idUsuario, idQueijo])

}

module.exports = {
    mostrarQueijos,
    favoritarQueijo
}