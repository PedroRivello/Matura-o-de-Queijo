var queijoModel = require("../models/queijoModel")

function mostrarQueijos(req, res) {
    queijoModel.mostrarQueijos()
    .then((resultado) => {
      if (resultado.length === 0) {
        return res.status(404).json({ mensagem: 'Nenhum Queijo encontrado' })
      }
      res.json(resultado);
    })
    .catch((erro) => {
      console.error("Erro ao buscar queijos:", erro)
      res.status(500).json({ erro: erro.sqlMessage });
    })
}

function favoritarQueijo(req, res) {
  var idUsuario = req.params.idUsuario;
  var idQueijo = req.params.idQueijo;

  queijoModel.favoritarQueijo(idUsuario, idQueijo)
    .then((resultado) => {
      res.json({ mensagem: "Personagem favoritado com sucesso!" });
    })
    .catch((erro) => {
      console.error("Erro ao favoritar personagem:", erro);
      res.status(500).json({ erro: erro.sqlMessage });
    });
}

module.exports = {
  mostrarQueijos,
  favoritarQueijo
}