var express = require("express");
var router = express.Router();

var queijoController = require("../controllers/queijoController");

router.get("/queijos/buscar", function(req,res){
    queijoController.mostrarQueijos(req,res);
})