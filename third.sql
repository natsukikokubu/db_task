-- カテゴリごとの記事数（third.sql）
categories: id, name
articles: category_id

SELECT c.name, COUNT(a.id) as article_count
FROM categories as c
INNER JOIN articles as a ON c.id = a.category_id
GROUP BY c.name

-- 実行結果
mysql> SELECT c.name, COUNT(a.id) as article_count
    -> FROM categories as c
    -> INNER JOIN articles as a ON c.id = a.category_id
    -> GROUP BY c.name;
+--------+---------------+
| name   | article_count |
+--------+---------------+
| 全体   |           337 |
| 営業   |           324 |
| 教育   |           339 |
+--------+---------------+
3 rows in set (0.27 sec)
