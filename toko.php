<?php
// var_dump($_POST);
// exit();
session_start();
include("function.php");
// DB接続
$pdo = db_connect();

// 受け取ったデータを変数に入れる 
$toko = $_POST["toko"];

// データ登録SQL作成
$sql = 'INSERT INTO toko_table(id, toko, created_at, updated_at)
VALUES(NULL, :toko,  sysdate(), sysdate())';

// SQL準備&実行
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':toko', $toko, PDO::PARAM_STR);
$status = $stmt->execute(); // SQLを実行

// データ登録処理後
if ($status == false) {
  // SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
  $error = $stmt->errorInfo();
  exit('sqlError:'.$error[2]);
} else {
  $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
  $output = "";
  // 正常にSQLが実行された場合は入力ページファイルに移動し，入力ページの処理を実行する
  header('Location:mypage.php');
}