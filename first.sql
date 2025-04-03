- 記事のタイトルと本文とユーザー名の一覧（first.sql）

SELECT a.title, ac.content, u.account_name
FROM articles as a
INNER JOIN article_contents as ac ON a.id = ac.article_id
INNER JOIN users as u ON a.user_id = u.id;
