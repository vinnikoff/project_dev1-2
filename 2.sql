CREATE VIEW dev_check AS SELECT developer.salary, projects.id_pro FROM developer INNER JOIN projects
ON developer.id=projects.id_dev ORDER BY projects.id_pro DESC;

CREATE VIEW pro_check AS SELECT id_pro, SUM (salary) FROM dev_check GROUP BY id_pro;

SELECT MAX(sum) FROM pro_check;