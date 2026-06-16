var database = require("../database/config")

function mostrarQueijos() {
    var instrucaoSql = `
    SELECT
        q.id,
        q.nome,
        q.foto,
        q.descricao,
        q.umidade,
        t.nome,
        t.gordura
    FROM queijo q
    JOIN tipo t on q.fkTipo = t.id;`
   
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql)
}

module.exports = {
    mostrarQueijos
}