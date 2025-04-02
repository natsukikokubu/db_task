-- 記事を一件以上投稿したユーザー名とロール一覧（second.sql）

SELECT u.account_name, r.name
FROM users as u
INNER JOIN roles as r ON u.role_id = r.id
INNER JOIN articles as a ON u.id = a.user_id
WHERE a.title IS NOT NULL
GROUP BY u.account_name, r.name
