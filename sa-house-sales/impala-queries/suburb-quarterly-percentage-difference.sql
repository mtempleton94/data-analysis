use sa_house_sales;

/* analyse difference in median sale price between first quarter and last quarter */
SELECT DISTINCT 2018_q1.suburb, 
ROUND((100.0*(2015_q3.aveprice - 2015_q2.aveprice) / 2015_q2.aveprice),0) AS 2015_Q2_Q3,
ROUND((100.0*(2015_q4.aveprice - 2015_q3.aveprice) / 2015_q3.aveprice),0) AS 2015_Q3_Q4,
ROUND((100.0*(2016_q1.aveprice - 2015_q4.aveprice) / 2015_q4.aveprice),0) AS 2015_Q4_Q1,
ROUND((100.0*(2016_q2.aveprice - 2016_q1.aveprice) / 2016_q1.aveprice),0) AS 2016_Q1_Q2,
ROUND((100.0*(2016_q3.aveprice - 2016_q2.aveprice) / 2016_q2.aveprice),0) AS 2016_Q2_Q3,
ROUND((100.0*(2016_q4.aveprice - 2016_q3.aveprice) / 2016_q3.aveprice),0) AS 2016_Q3_Q4,
ROUND((100.0*(2017_q1.aveprice - 2016_q4.aveprice) / 2016_q4.aveprice),0) AS 2017_Q4_Q1,
ROUND((100.0*(2017_q2.aveprice - 2017_q1.aveprice) / 2017_q1.aveprice),0) AS 2017_Q1_Q2,
ROUND((100.0*(2017_q3.aveprice - 2017_q2.aveprice) / 2017_q2.aveprice),0) AS 2017_Q2_Q3,
ROUND((100.0*(2017_q4.aveprice - 2017_q3.aveprice) / 2017_q3.aveprice),0) AS 2017_Q3_Q4,
ROUND((100.0*(2018_q1.aveprice - 2017_q4.aveprice) / 2017_q4.aveprice),0) AS 2018_Q4_Q1,
ROUND((100.0*(2018_q2.aveprice - 2018_q1.aveprice) / 2018_q1.aveprice),0) AS 2018_Q1_Q2
FROM 2018_q1  
INNER JOIN 2015_q2 ON (2018_q1.suburb = 2015_q2.suburb)
INNER JOIN 2015_q3 ON (2018_q1.suburb = 2015_q3.suburb)
INNER JOIN 2015_q4 ON (2018_q1.suburb = 2015_q4.suburb)
INNER JOIN 2016_q1 ON (2018_q1.suburb = 2016_q1.suburb)
INNER JOIN 2016_q2 ON (2018_q1.suburb = 2016_q2.suburb)
INNER JOIN 2016_q3 ON (2018_q1.suburb = 2016_q3.suburb)
INNER JOIN 2016_q4 ON (2018_q1.suburb = 2016_q4.suburb)
INNER JOIN 2017_q1 ON (2018_q1.suburb = 2017_q1.suburb)
INNER JOIN 2017_q2 ON (2018_q1.suburb = 2017_q2.suburb)
INNER JOIN 2017_q3 ON (2018_q1.suburb = 2017_q3.suburb)
INNER JOIN 2017_q4 ON (2018_q1.suburb = 2017_q4.suburb)
INNER JOIN 2018_q2 ON (2018_q1.suburb = 2018_q2.suburb)
ORDER BY 2018_q1.suburb LIMIT 5;

