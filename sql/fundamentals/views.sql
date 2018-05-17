--CREATE [TEMP] VIEW [IF NOT EXISTS]
--view_name(column_name_list)
--AS
--SELECT_statement;

CREATE VIEW employee_territories AS (
  SELECT r.region_description
    , t.territory_description
    , e.last_name
    , e.first_name
    , e.hire_date
    , e.reports_to
  FROM Region r
    INNER JOIN Territories t ON r.region_id = t.region_id
    INNER JOIN Employee_territories et on t.territory_id = et.territory_id
    INNER JOIN Employees e on et.employee_id = e.employee_id);

SELECT count(territory_description), last_name, first_name
FROM employee_territories
GROUP BY last_name, first_name;

SELECT *
FROM employee_territories
DROP VIEW employee_territories;
