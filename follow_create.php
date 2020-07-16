<?php
// var_dump($_GET);
// exit();

// 関数ファイルの読み込み 
include('function.php');

// // GETデータ取得
// $user_id = $_GET['user_id']; 
// $other_id = $_GET['other_id'];

// DB接続
$pdo = db_connect();

 // SQL作成   // いいね状態のチェック(COUNTで件数を取得できる!)
$sql = 'SELECT COUNT(*) FROM follow_table WHERE user_id=:user_id AND other_id=:other_id';
// $sql = 'INSERT INTO like_table(id, user_id, todo_id, created_at)VALUES(NULL, :user_id, :todo_id, sysdate())';

  // SQL実行
  $stmt = $pdo->prepare($sql); 
  $stmt->bindValue(':user_id', $user_id, PDO::PARAM_INT); 
  $stmt->bindValue(':other_id', $other_id, PDO::PARAM_INT);
  $status = $stmt->execute();

  if ($status == false) {
    // エラー処理 
    $error = $stmt->errorInfo();
    echo json_encode(["error_msg" => "{$error[2]}"]);
    exit();
  } else {
    $like_count = $stmt->fetch(); 
    // var_dump($like_count[0]);  //0番目にすると表示される
    // exit();
  // データの件数を確認!


    if ($like_count[0] != 0) {
    $sql ='DELETE FROM follow_table WHERE user_id=:user_id AND other_id=:other_id';
    } else {
    $sql = 'INSERT INTO follow_table(id, user_id, other_id, created_at)VALUES(NULL, :user_id, :other_id, sysdate())'; // 1行で記述!
    }
      // SQL実行
      $stmt = $pdo->prepare($sql); 
      $stmt->bindValue(':user_id', $user_id, PDO::PARAM_INT); 
      $stmt->bindValue(':other_id', $other_id, PDO::PARAM_INT);
      $status = $stmt->execute();
      
      if ($status == false) {
        // SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
        $error = $stmt->errorInfo();
        echo json_encode(["error_msg" => "{$error[2]}"]);
        exit();
      } else {
        // 正常にSQLが実行された場合は入力ページファイルに移動し，入力ページの処理を実行する
        header("Location:user_read.php");
        exit();
      }
  }