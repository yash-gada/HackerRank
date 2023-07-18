-- Binary Tree Nodes

SELECT n,
  CASE
    WHEN (p is NULL) then "Root"
    WHEN (n not in (SELECT p from BST)) IS NULL then "Leaf"
    ELSE "Inner"
  END
FROM BST
ORDER BY n
