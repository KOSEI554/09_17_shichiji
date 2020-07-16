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
  <title>Document</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div>こんにちは！ <br>
    <?php echo $_SESSION['usern'] ?>さん！</div>
    <!-- <a href="account.php">ユーザーページ</a> -->
    <div>
    <p>プロフィール</p>
    <h1><?php echo $_SESSION['usern'] ?></h1>
    <p><a href="account.php" class="logout">アカウント情報</a></p>


  </div>
  
  <form action="search_act.php" method="POST">
    <p>ユーザー検索</p>
    <input type="text" name="search">
    <input type="submit" value="検索">
  </form>

  <a href="logout.php" class="logout">ログアウト</a>

  <form action="toko.php" method="POST">
    投稿
    <input type="text" value="" name="toko">
    <input type="submit" value="送信">

  <!-- <form method="POST" action="<?php print($_SERVER['PHP_SELF']) ?>">
    <input type="text" name="personal_name"><br><br>
    <textarea name="contents" rows="8" cols="40">
    </textarea><br><br>
    <input type="submit" name="btn1" value="投稿する">
  </form>
    <?php
        $personal_name = $_POST['personal_name'];
        $contents = $_POST['contents'];

        print('<p>投稿者:'.$personal_name.'</p>');
        print('<p>内容:</p>');
        print('<p>'.$contents.'</p>');
    ?>
  </form> -->

  <a href="user_read.php">ユーザーページ</a>
  
</body>
</html>