WITH RECURSIVE chain_of_command AS (
SELECT id, name, manager_id, CAST(id AS CHAR(200)) AS chain
FROM employees
WHERE manager_id IS NULL
UNION ALL
SELECT e.id, e.name, e.manager_id, CONCAT(c.chain, ',', e.id) AS chain
FROM employees e
JOIN chain_of_command c ON e.manager_id = c.id
),
pedro_chain AS (
SELECT chain
FROM chain_of_command
WHERE INSTR(chain, CAST((SELECT id FROM employees WHERE name = 'Pedro') AS CHAR)) > 0
)

SELECT chain
FROM pedro_chain; 