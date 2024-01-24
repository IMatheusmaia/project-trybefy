SELECT 
  plans.name AS 'Plano',
  COUNT(users.plan_id) AS 'Quantidade de usuários'
FROM 
  plans
INNER JOIN 
  users ON users.plan_id = plans.id
GROUP BY 
  plans.name
ORDER BY 
  plans.name ASC;
