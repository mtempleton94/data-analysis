use sa_house_sales;

/* select sale data for suburbs where the median sale price in 2018 was > 1000000 */
SELECT DISTINCT 2018_q1.suburb, 
2015_q2.aveprive as 2015_Q2,
2015_q3.aveprice as 2015_Q3,
2015_q4.aveprice as 2015_Q4,
2016_q1.aveprice as 2016_Q1,
2016_q2.aveprice as 2016_Q2,
2016_q3.aveprice as 2016_Q3,
2016_q4.aveprice as 2016_Q4,
2017_q1.aveprice as 2017_Q1,
2017_q2.aveprice as 2017_Q2,
2017_q3.aveprice as 2017_Q3,
2017_q4.aveprice as 2017_Q4,
2018_q1.aveprive as 2018_Q1, 
2018_q2.aveprive as 2018_Q2
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

WHERE 2018_q1.aveprive > 1000000 OR 2018_q2.aveprive > 1000000;

