UPDATE users
SET active = 1
  WHERE full_name LIKE 'Andressa';

UPDATE users
SET active = 0
  WHERE full_name LIKE 'Rogério';

UPDATE users
SET plan_id = 2
  WHERE full_name LIKE 'Camila';