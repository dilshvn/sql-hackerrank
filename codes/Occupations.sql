SELECT GROUP_CONCAT(IF(occupation = 'Doctor', name, NULL)), GROUP_CONCAT(IF(occupation = 'Professor', name, NULL)), GROUP_CONCAT(IF(occupation = 'Singer', name, NULL)), GROUP_CONCAT(IF(occupation = 'Actor', name, NULL))
FROM (SELECT *, ROW_NUMBER() OVER(PARTITION BY occupation ORDER BY name) AS custom FROM occupations) AS ord
GROUP BY custom;
