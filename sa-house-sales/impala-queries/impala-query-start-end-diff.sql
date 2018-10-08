use sa_house_sales;

/* analyse difference in median sale price between first quarter and last quarter */
SELECT DISTINCT 2015_q2.suburb, (100.0*(2018_q2.aveprive - 2015_q2.aveprive) / 2015_q2.aveprive) As PercentageDifference
FROM 2015_q2 
JOIN 2018_q2 ON (2015_q2.suburb = 2018_q2.suburb)
WHERE 2018_q2.aveprive IS NOT NULL 
AND 2015_q2.aveprive IS NOT NULL
ORDER BY PercentageDifference DESC;
