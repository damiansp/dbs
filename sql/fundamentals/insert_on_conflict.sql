-- Synax
-- INSERT INTO table_name(column_list) VALUES(value_list)
-- ON CONFLICT target action;

-- 'target' can be:
--    column name
--    ON CONSTRAINT constraint_name
--    WHERE where_clause
-- 'action' can be:
--   DO NOTHING
--   DO UPDATE SET colum_1 = value_1, .. WHERE condition

CREATE TABLE customers(
  customer_id serial PRIMARY KEY,
  name VARCHAR UNIQUE,
  email VARCHAR NOT NULL,
  active bool NOT NULL DEFAULT TRUE);

INSERT INTO customers (name, email)
VALUES
  ('IBM', 'contact@ibm.com'),
  ('Microsoft', 'contact@microsoft.com'),
  ('Intel', 'contact@intel.com');


SELECT * FROM customers;
--  customer_id |   name    |         email         | active
-- -------------+-----------+-----------------------+--------
--            1 | IBM       | contact@ibm.com       | t
--            2 | Microsoft | contact@microsoft.com | t
--            3 | Intel     | contact@intel.com     | t

INSERT INTO customers (name, email)
VALUES ('Microsoft', 'hotline@microsoft.com')
ON CONFLICT (name) DO NOTHING;

-- Table unchanged


INSERT INTO customers (name, email)
VALUES ('Microsoft', 'daboss@microsoft.com')
ON CONFLICT DO UPDATE SET email = EXCLUDED.email || ';' || customers.email;

SELECT * FROM customers WHERE name == 'Microstoft';
-- customer_id |   name    |                 email                      | active
---------------+-----------+--------------------------------------------+---
--           2 | Microsoft | hotline@microsoft.com;daboss@microsoft.com | t




