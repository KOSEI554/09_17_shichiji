<?php
// 送信データのチェック
// var_dump($_GET);
// exit();

// session_start();
// include("function.php");
// loginCheck();

// 関数ファイルの読み込み
include("function.php");

$id = $_GET["id"];

$pdo = db_connect();

// データ取得SQL作成
$sql = 'SELECT * FROM g_user_table WHERE id=:id';


// SQL準備&実行
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

// データ登録処理後
if ($status == false) {
  // SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
  $error = $stmt->errorInfo();
  echo json_encode(["error_msg" => "{$error[2]}"]);
  exit();
} else {
  // 正常にSQLが実行された場合は指定の11レコードを取得
  // fetch()関数でSQLで取得したレコードを取得できる
  $record = $stmt->fetch(PDO::FETCH_ASSOC);
  $output = "";
}

?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DB連携型todoリスト（編集画面）</title>
</head>

<body>
  <form action="todo_update.php" method="POST">
      <a href="todo_read.php">一覧画面</a>

      <div>
      <?= $output ?>
      </div>

      <div>
        todo: <input type="text" name="id" value="<?= $record["usern"] ?>">
      </div>
      <input type="hidden" name="id" value="<?= $record["id"] ?>">
  </form>

</body>

</html>