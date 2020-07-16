<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>ユーザー</title>
</head>

<body>

  <form action="login_act.php" method="POST" class="login">
    <div class="log">ログイン</div>
    <ul>
      <li><label for="">メールアドレス</label> <input type="text" name="mail"></li>
      <li><label for="">パスワード</label> <input type="text" name="pass"></li>
    </ul>
      <li><input type="submit" value="ログイン" ></li>
    <a href="create.php" class="new">新規登録</a>
  </form>

</body>
</html>