<?php
// var_dump($_POST);
// exit();

session_start();
include("function.php");
$pdo = db_connect();

if (
  !isset($_POST['mail']) || $_POST['mail']=='' ||
  !isset($_POST['pass']) || $_POST['pass']=='' ){
    // var_dump($_POST);
    // exit();
  exit('入力ができていません');
  }

$mail = $_POST["mail"];
$pass = $_POST["pass"];



// POSTされたメールアドレス検索
try{
  $stmt = $pdo->prepare("SELECT * from g_user_table where mail = :mail AND pass = :pass");
  $stmt->bindValue(':mail', $mail, PDO::PARAM_STR);
  $stmt->bindValue(':pass', $pass, PDO::PARAM_STR);
  $status = $stmt->execute(); 
  $row = $stmt->fetch(PDO::FETCH_ASSOC);
  // $value = $row["mail"];
  // var_dump($row);
  // exit();
  if (!$row) {
    echo "メールアドレスもしくはパスワードが間違っています。";
    }else{
      $_SESSION['chk_ssid'] = session_id();
      $_SESSION['usern'] = $row['usern'];
      $_SESSION['mail'] = $row['mail'];
      $_SESSION['pass'] = $row['pass'];
      header('Location: mypage.php');
      exit();
      }
  } catch(PDOException $e){
    echo json_encode(["db error" => "{$e->getMessage()}"]);
    // echo "できてない";
    return false;
  }
