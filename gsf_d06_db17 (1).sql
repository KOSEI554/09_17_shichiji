-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2020 年 7 月 16 日 13:34
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsf_d06_db17`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `account_table`
--

CREATE TABLE `account_table` (
  `id` int(12) NOT NULL,
  `old` varchar(128) NOT NULL,
  `prefecture` varchar(128) NOT NULL,
  `message` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `account_table`
--

INSERT INTO `account_table` (`id`, `old`, `prefecture`, `message`, `created_at`, `updated_at`) VALUES
(1, '12', '福岡', 'できる？', '2020-07-01 01:27:46', '2020-07-01 01:27:46'),
(2, '12', '福岡', 'できる？', '2020-07-01 01:28:07', '2020-07-01 01:28:07'),
(3, '', '', '', '2020-07-01 01:30:44', '2020-07-01 01:30:44'),
(4, '', '', '', '2020-07-01 01:35:16', '2020-07-01 01:35:16'),
(5, '12', '福岡', 'できる？', '2020-07-01 01:35:37', '2020-07-01 01:35:37'),
(6, '15', 'ふくおか', 'できない', '2020-07-01 22:47:17', '2020-07-01 22:47:17'),
(7, '15', 'ふくおか', 'できる？', '2020-07-02 12:02:34', '2020-07-02 12:02:34'),
(8, '15', 'ふくおか', 'できる？', '2020-07-02 12:03:47', '2020-07-02 12:03:47'),
(9, '', '', '', '2020-07-02 12:05:27', '2020-07-02 12:05:27'),
(10, '15', 'ふくおか', 'できる？', '2020-07-02 12:06:06', '2020-07-02 12:06:06');

-- --------------------------------------------------------

--
-- テーブルの構造 `follow_table`
--

CREATE TABLE `follow_table` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `other_id` int(12) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `follow_table`
--

INSERT INTO `follow_table` (`id`, `user_id`, `other_id`, `created_at`) VALUES
(2, 1, 4, '2020-07-16 19:42:36.000000'),
(3, 1, 8, '2020-07-16 19:42:37.000000'),
(4, 1, 9, '2020-07-16 19:42:38.000000'),
(5, 1, 10, '2020-07-16 19:42:39.000000'),
(6, 1, 11, '2020-07-16 19:42:39.000000'),
(7, 1, 13, '2020-07-16 19:42:41.000000'),
(10, 0, 9, '2020-07-16 19:43:58.000000'),
(13, 0, 13, '2020-07-16 19:44:02.000000'),
(14, 0, 14, '2020-07-16 19:44:03.000000'),
(19, 0, 11, '2020-07-16 19:45:19.000000'),
(20, 0, 4, '2020-07-16 19:45:47.000000'),
(22, 0, 8, '2020-07-16 19:55:11.000000'),
(24, 0, 7, '2020-07-16 19:55:13.000000'),
(25, 0, 10, '2020-07-16 19:55:31.000000');

-- --------------------------------------------------------

--
-- テーブルの構造 `g_user2_table`
--

CREATE TABLE `g_user2_table` (
  `id` int(12) NOT NULL,
  `usern` int(12) NOT NULL,
  `mail` int(120) NOT NULL,
  `pass` int(20) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- テーブルの構造 `g_user_table`
--

CREATE TABLE `g_user_table` (
  `id` int(12) NOT NULL,
  `usern` varchar(20) NOT NULL,
  `mail` varchar(120) NOT NULL,
  `pass` varchar(120) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `g_user_table`
--

INSERT INTO `g_user_table` (`id`, `usern`, `mail`, `pass`, `created_at`, `updated_at`) VALUES
(4, 'kosei', 'skosei554@yahoo.co.jp', '5454', '2020-07-13 21:46:17', '2020-07-13 21:46:17'),
(7, 'こうせい', 'swswsw@', 'qwqw', '2020-07-13 22:12:22', '2020-07-13 22:12:22'),
(8, 'たろう', 'taro', 'taro', '2020-07-14 01:08:45', '2020-07-14 01:08:45'),
(9, 'taro', 'naze', 'naze', '2020-07-14 20:26:55', '2020-07-14 20:26:55'),
(10, 'いちばん', '1111', '1111', '2020-07-16 12:30:51', '2020-07-16 12:30:51'),
(11, 'ばんごう', '222', '222', '2020-07-16 12:34:18', '2020-07-16 12:34:18'),
(12, 'こここ', 'kkk', 'kkk', '2020-07-16 15:31:07', '2020-07-16 15:31:07'),
(13, 'ばば', 'bbb', 'bbb', '2020-07-16 16:38:08', '2020-07-16 16:38:08'),
(14, 'じじ', 'jjj', 'jjj', '2020-07-16 16:38:39', '2020-07-16 16:38:39'),
(15, 'しちじ', 'sss', 'sss', '2020-07-16 16:39:53', '2020-07-16 16:39:53');

-- --------------------------------------------------------

--
-- テーブルの構造 `info_user_table`
--

CREATE TABLE `info_user_table` (
  `id` int(12) NOT NULL,
  `old` varchar(12) NOT NULL,
  `prefecture` varchar(20) NOT NULL,
  `message` varchar(120) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `info_user_table`
--

INSERT INTO `info_user_table` (`id`, `old`, `prefecture`, `message`, `created_at`, `updated_at`) VALUES
(1, '15', '福岡', 'できる？', '2020-07-16 14:52:15.000000', '2020-07-16 14:52:15.000000');

-- --------------------------------------------------------

--
-- テーブルの構造 `like_table`
--

CREATE TABLE `like_table` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `todo_id` int(12) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `like_table`
--

INSERT INTO `like_table` (`id`, `user_id`, `todo_id`, `created_at`) VALUES
(2, 1, 3, '2020-07-11 15:14:57'),
(3, 1, 3, '2020-07-11 15:34:42'),
(6, 1, 7, '2020-07-11 16:23:53'),
(7, 1, 6, '2020-07-11 16:23:54'),
(8, 1, 5, '2020-07-11 16:23:54'),
(9, 1, 9, '2020-07-11 16:23:56'),
(10, 1, 10, '2020-07-11 16:23:56'),
(12, 1, 1, '2020-07-14 07:51:31');

-- --------------------------------------------------------

--
-- テーブルの構造 `management_table`
--

CREATE TABLE `management_table` (
  `id` int(12) NOT NULL,
  `name` varchar(12) NOT NULL,
  `mail` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `management_table`
--

INSERT INTO `management_table` (`id`, `name`, `mail`, `pass`) VALUES
(1, '七字晃正', '5454', '5454');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 'SQLを', '2020-06-26', '2020-06-20 15:32:33', '2020-07-02 11:37:28'),
(3, 'SQLやらない', '2020-06-25', '2020-06-20 15:38:50', '2020-06-20 15:38:50'),
(4, 'PHP', '2020-06-29', '2020-06-20 15:39:33', '2020-06-20 15:39:33'),
(5, 'JS', '2020-06-23', '2020-06-20 15:40:42', '2020-06-20 15:40:42'),
(6, 'CSSをかく', '2020-07-12', '2020-06-20 15:43:33', '2020-06-20 15:43:33'),
(7, '成功', '2020-06-23', '2020-06-20 17:14:20', '2020-06-20 17:14:20'),
(8, 'やること', '2020-06-03', '2020-06-20 17:14:30', '2020-06-20 17:14:30'),
(9, 'アイ', '2020-06-16', '2020-06-22 14:21:05', '2020-06-22 14:21:05'),
(10, '確認', '2020-06-29', '2020-06-27 15:13:05', '2020-06-27 15:13:05');

-- --------------------------------------------------------

--
-- テーブルの構造 `toko_table`
--

CREATE TABLE `toko_table` (
  `id` int(12) NOT NULL,
  `toko` varchar(128) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `toko_table`
--

INSERT INTO `toko_table` (`id`, `toko`, `created_at`, `updated_at`) VALUES
(1, 'テスト', '2020-07-16 18:30:51.000000', '2020-07-16 18:30:51.000000'),
(2, '', '2020-07-16 18:56:15.000000', '2020-07-16 18:56:15.000000'),
(3, '', '2020-07-16 18:56:30.000000', '2020-07-16 18:56:30.000000');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'kosei', 'kosei', 0, 0, '2020-07-04 15:54:02', '2020-07-04 15:54:02');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_data_table`
--

CREATE TABLE `user_data_table` (
  `id` int(12) NOT NULL,
  `old` varchar(20) NOT NULL,
  `prefecture` varchar(20) NOT NULL,
  `message` varchar(120) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `user_data_table`
--

INSERT INTO `user_data_table` (`id`, `old`, `prefecture`, `message`, `created_at`, `updated_at`) VALUES
(1, '12', '福岡', 'お願いします。', '2020-07-14 21:30:21.000000', '2020-07-14 21:30:21.000000');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(20) NOT NULL,
  `usern` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `old` varchar(12) NOT NULL,
  `prefecture` varchar(12) NOT NULL,
  `message` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `usern`, `mail`, `pass`, `old`, `prefecture`, `message`, `created_at`, `updated_at`) VALUES
(1, '七字晃正', 'ここ', 'skosei554@yahoo.co.jp', 'kokoko', '12', 'ふくおか', 'できる？', '2020-06-22 14:58:47', '2020-07-16 17:01:32'),
(4, '七字晃正', 'ここ', 'skosei554@yahoo.co.jp', 'koko', '', '', '', '2020-06-22 17:13:18', '2020-06-22 17:13:18'),
(5, 'しちじ', 'しちじ', 'skosei554@yahoo.co.jp', 'vovovo', '99', '鹿児島', 'お願いします。', '2020-06-22 20:36:54', '2020-07-06 23:50:05'),
(10, '七字晃正', 'しちじ', 'skosei554@yahoo.co.jp', 'koko', '', '', '', '2020-06-25 02:11:16', '2020-06-25 02:11:16'),
(11, 'できるかな', 'できる', 'swsw', 'qwqw', '', '', '', '2020-06-25 15:40:04', '2020-07-02 11:54:12'),
(14, '太郎', 'たろう', 'swswsw@', 'jiji', '15', 'さが', 'できない', '2020-06-25 15:59:19', '2020-07-02 22:42:07'),
(15, 'なぜ', '何故', 'naze', 'naze', '', '', '', '2020-06-28 13:21:40', '2020-06-28 13:21:40'),
(16, 'コウセイ', 'コウセイ', 'skosei554@gamil.com', 'qwqw54', '76', '東京', 'ラスト', '2020-06-30 22:24:46', '2020-07-09 21:25:12'),
(17, '七字晃正', 'たろう', 'skosei554@yahoo.co.jp', 'qwqw', '', '', '', '2020-07-02 11:48:51', '2020-07-02 11:48:51'),
(20, '七字晃正', 'こうせい', 'skosei554@yahoo.co.jp', 'aaa', '27', '福岡', 'お願いします。', '2020-07-02 13:26:10', '2020-07-02 13:26:10'),
(24, '山田', '山田', 'swswsw@', 'kokoko', '3', '熊本', '登録', '2020-07-04 17:06:44', '2020-07-04 17:06:44'),
(25, '田中', 'タナカ', 'naze', 'naze', '45', '沖縄', '最終', '2020-07-09 21:32:48', '2020-07-09 21:32:48');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `account_table`
--
ALTER TABLE `account_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `follow_table`
--
ALTER TABLE `follow_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `g_user2_table`
--
ALTER TABLE `g_user2_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `g_user_table`
--
ALTER TABLE `g_user_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `info_user_table`
--
ALTER TABLE `info_user_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `like_table`
--
ALTER TABLE `like_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `management_table`
--
ALTER TABLE `management_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `toko_table`
--
ALTER TABLE `toko_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_data_table`
--
ALTER TABLE `user_data_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `account_table`
--
ALTER TABLE `account_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルのAUTO_INCREMENT `follow_table`
--
ALTER TABLE `follow_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- テーブルのAUTO_INCREMENT `g_user2_table`
--
ALTER TABLE `g_user2_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `g_user_table`
--
ALTER TABLE `g_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- テーブルのAUTO_INCREMENT `info_user_table`
--
ALTER TABLE `info_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `like_table`
--
ALTER TABLE `like_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- テーブルのAUTO_INCREMENT `management_table`
--
ALTER TABLE `management_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルのAUTO_INCREMENT `toko_table`
--
ALTER TABLE `toko_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルのAUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `user_data_table`
--
ALTER TABLE `user_data_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
