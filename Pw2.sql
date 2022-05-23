?php

/**
*Classe de Contatos
*/
class Contato{
private $pdo;


function __construct()
{
$dns = "mysql:dbname=contato;host=localhost";
$dbUser = "root";
$dbPass = "";

try {
$this->pdo = new PDO($dns, $dbUser, $dbPass);
} catch (Exception $e) {
echo "<h2>Banco indisponível. Tente mais tarde";
}
}

private $email;
private $senha;

public function getEmail(){
return $this ->email;
}

public function getSenha(){
return $this->senha;
}

public function setEmail($email){
$this->email = $email;
}

public function setSenha($senha){
$this->senha = $senha;
}

public function adicionar($email, $senha){
$sql = "INSERT INTO contatos SET email = :e, senha = :s";
$sql = $this->pdo->prepare($sql);
$sql->bindValue(":e", $email);