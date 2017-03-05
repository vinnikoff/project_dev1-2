CREATE VIEW sal_check AS SELECT developer.salary, specialty.id_dev, specialty.specialty FROM developer INNER JOIN specialty
ON developer.id=specialty.id_dev WHERE specialty.specialty like 'java';

SELECT SUM (salary) FROM sal_check;