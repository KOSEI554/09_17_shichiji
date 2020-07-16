<?php
session_start();
include("function.php");
loginCheck();
?>
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>変更</title>
</head>

<body>
  <form action="data.php" method="POST">
      <p>更新画面</p> 
      <p><a href="mypage.php">マイページに戻る</a></p>
      
      <ul class="item">
        <li><label for="">ユーザー名: </label><input type="text" name="usern" value="<?= $record["usern"] ?>"></li>
        <li><label for=""> 年齢</label><input type="number" min="0" name="old" ></li>
        <li><label for=""> 居住地</label><input type="text" name="prefecture" ></li>
        <li><label for=""> ひとこと</label><input type="text" name="message" ></li>
        <li><input type="submit" value="登録"></li>
      </ul>
  </form>

</body>

</html>