-- カテゴリごとの記事数（third.sql）

SELECT c.name, COUNT(a.id) as article_count
FROM categories as c
INNER JOIN articles as a ON c.id = a.category_id
GROUP BY c.name
