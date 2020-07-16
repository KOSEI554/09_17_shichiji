<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <form action="create_act.php" method="POST">
    <div class="torku">新規登録</div>  
      <ul class="item">
      <li><label for="">ユーザー名</label><input type="text" name="usern"></li>
        <li><label for="">メールアドレス</label><input type="text" name="mail"></li>
        <li><label for="">パスワード</label><input type="text" name="pass"></li>
        <li><input type="submit" value="登録"></li>
      </ul>
  </form>
</body>
</html>