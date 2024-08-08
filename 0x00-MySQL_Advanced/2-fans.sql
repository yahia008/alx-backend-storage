-- Orders the countries of band origins by the quantity of fans (not necessarily unique).
SELECT origin, SUM(fans) AS nb_fans
    FROM metal_bands
    GROUP BY origin
    ORDER BY nb_fans DESC;
