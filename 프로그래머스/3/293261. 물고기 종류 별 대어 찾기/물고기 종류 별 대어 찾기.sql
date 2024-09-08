SELECT ID, FISH_NAME, LENGTH
FROM FISH_INFO FI JOIN FISH_NAME_INFO NI ON FI.FISH_TYPE = NI.FISH_TYPE
WHERE (FI.FISH_TYPE, LENGTH) IN (SELECT FISH_TYPE, MAX(LENGTH) FROM FISH_INFO GROUP BY FISH_TYPE ORDER BY 1)
ORDER BY 1;

