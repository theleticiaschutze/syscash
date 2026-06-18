<?php

function validaDados($registro)
{
    $erros = [];

    if (!htmlspecialchars(strip_tags(filter_input($registro->descricao_categoria, FILTER_UNSAFE_RAW)), ENT_QUOTES, 'UTF-8')) {
        $erros["descricao_categoria"] =  "Descrição: Campo vazio e ou informação inválida!";
    }

    if (count($erros) > 0) {
        $_SESSION["erros"] = $erros;
        throw new Exception("Erro nas informações!");
    }
}