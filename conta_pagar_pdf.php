<?php
require_once("./fpdf184/fpdf.php");
require_once("conexao.php");
require_once("conta_pagar_crud.php");
require_once("favorecido_crud.php");

function buscarCategoriaLocal(int $id)
{
    try {
        $sql = "select * from categoria where id = ?";
        $conexao = new PDO("mysql:host=" . SERVIDOR . ";dbname=" . BANCO, USUARIO, SENHA);
        $pre = $conexao->prepare($sql);
        $pre->execute(array($id));
        return $pre->fetchAll(PDO::FETCH_ASSOC);
    } catch (Exception $e) {
        echo "Erro: " . $e->getMessage() . "<br>";
    }
}


class ContaspagarPDF extends FPDF
{
    // Page header
    function Header()
    {
        // Arial bold 15
        $this->SetFont('Arial', 'B', 15);
        // Move to the right
        $this->Cell(80);

        // Title
        $this->Cell(30, 10, 'Listagem de contas a pagar', 0, 0, 'C');

        //Linha
        $this->Line(0, 20, $this->GetPageWidth(), 20);

        // Line break
        $this->Ln(20);
    }
    // Page footer
    function Footer()
    {
        date_default_timezone_set("america/sao_paulo");
        // Position at 1.5 cm from bottom
        $this->SetY(-15);
        // Arial italic 8
        $this->SetFont('Arial', 'I', 8);
        // Page number
        $this->Cell(0, 10, iconv("utf-8", "cp1252", "Página: ") . $this->PageNo() . "/{nb}", 0, 0, "C");
        $this->Cell(0, 10, iconv("utf-8", "cp1252", "Data: ") . date("d/m/Y - H:i:s"), 0, 0, "R");
    }

    // Simple table
    function listagem()
    {
        try {
            $cabecalho = ["ID", "Descrição", "Favorecido", "Valor R$", "Vencimento", "Categoria"];
            $dados = listarContapagar();

            // Cabeçalho
            $this->Cell(10, 7, iconv("utf-8", "cp1252", $cabecalho[0]), 1);
            $this->Cell(80, 7, iconv("utf-8", "cp1252", $cabecalho[1]), 1);
            $this->Cell(70, 7, iconv("utf-8", "cp1252", $cabecalho[2]), 1);
            $this->Cell(25, 7, iconv("utf-8", "cp1252", $cabecalho[3]), 1);
            $this->Cell(25, 7, iconv("utf-8", "cp1252", $cabecalho[4]), 1);
            $this->Cell(40, 7, iconv("utf-8", "cp1252", $cabecalho[5]), 1);
            $this->Ln();

            // Dados
            foreach ($dados as $linha) {
            $this->Cell(10, 6, iconv("utf-8", "cp1252", $linha['id']), 1);
            $this->Cell(80, 6, iconv("utf-8", "cp1252", $linha['descricao']), 1);
            
            $fav = buscarFavorecido($linha['favorecido']);
            $nome_fav = isset($fav[0]['nome']) ? $fav[0]['nome'] : '-';
            $this->Cell(70, 6, iconv("utf-8", "cp1252", $nome_fav), 1);

            $this->Cell(25, 6, iconv("utf-8", "cp1252", number_format($linha['valor'], 2, ',', '.')), 1);
            $this->Cell(25, 6, iconv("utf-8", "cp1252", date("d/m/Y", strtotime($linha['data_vencimento']))), 1);
            
            $cat = buscarCategoriaLocal($linha['categoria_id']);
            $nome_cat = isset($cat[0]['descricao']) ? $cat[0]['descricao'] : '-';
            $this->Cell(40, 6, iconv("utf-8", "cp1252", $nome_cat), 1);

            $this->Ln();
        }
    } catch (Exception $e) {
        echo "Erro: " . $e->getMessage() . "<br>";
    }
    }
}

$pdf = new ContaspagarPDF("L","mm","A4");
$pdf->AliasNbPages();
$pdf->SetFont("Arial", "", 12);
$pdf->AddPage();
$pdf->listagem();
$pdf->Output();
