<?php
// var_dump($_POST);
// exit();

// 値が存在しないor空で送信されてきた場合はNGにする
if (
  !isset($_POST['usern']) || $_POST['usern']=='' ||
  !isset($_POST['mail']) || $_POST['mail']=='' ||
  !isset($_POST['pass']) || $_POST['pass']=='' ){
    // var_dump($_POST);
    // exit();
  exit('ParamError');
  }


// 受け取ったデータを変数に入れる 
$usern = $_POST["usern"];
$mail = $_POST["mail"];
$pass = $_POST["pass"];


// DB接続の設定
$dbn = 'mysql:dbname=gsf_d06_db17;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';


try {
  // ここでDB接続処理を実行する
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  // DB接続に失敗した場合はここでエラーを出力し，以降の処理を中止する
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit('dbError:'.$e->getMessage());
}


// データ登録SQL作成
$sql = 'INSERT INTO g_user_table(id, usern, mail, pass, created_at, updated_at)
VALUES(NULL, :usern, :mail, :pass,  sysdate(), sysdate())';


// SQL準備&実行
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':usern', $usern, PDO::PARAM_STR);
$stmt->bindValue(':mail', $mail, PDO::PARAM_STR);
$stmt->bindValue(':pass', $pass, PDO::PARAM_STR);
$status = $stmt->execute(); // SQLを実行


// データ登録処理後
if ($status == false) {
  // SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
  $error = $stmt->errorInfo();
  exit('sqlError:'.$error[2]);
} else {
  // 正常にSQLが実行された場合は入力ページファイルに移動し，入力ページの処理を実行する
  header('Location:input.php');
}
