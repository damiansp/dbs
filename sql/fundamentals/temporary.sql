CREATE TEMPORARY TABLE Sandals AS (
  SELECT *
  FROM Shoes
  WHERE shoe_type = 'sandal');
