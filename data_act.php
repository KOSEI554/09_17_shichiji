<?php
// 送信データのチェック
// var_dump($_POST);
// exit();

session_start();
include("function.php");
$pdo = db_connect();


// 受け取ったデータを変数に入れる 
$old = $_POST["old"];
$prefecture = $_POST["prefecture"];
$message = $_POST["message"];

// データ登録SQL作成
$sql = 'INSERT INTO info_user_table(id, old, prefecture, message, created_at, updated_at)
VALUES(NULL, :old, :prefecture, :message,  sysdate(), sysdate())';

// SQL準備&実行
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':old', $old, PDO::PARAM_STR);
$stmt->bindValue(':prefecture', $prefecture, PDO::PARAM_STR);
$stmt->bindValue(':message', $message, PDO::PARAM_STR);
$status = $stmt->execute(); // SQLを実行

// データ登録処理後
if ($status == false) {
  // SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
  $error = $stmt->errorInfo();
  exit('sqlError:'.$error[2]);
} else {
  // 正常にSQLが実行された場合は入力ページファイルに移動し，入力ページの処理を実行する
  header('Location:mypage.php');
}