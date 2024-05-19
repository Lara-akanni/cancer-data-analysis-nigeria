-- Aggregating all Sites of cancer across all Female states 
SELECT Site, SUM (CASES) AS TotalCases
FROM (
    SELECT Site, CASES FROM Abuja_Female af
    UNION ALL
    SELECT Site, CASES FROM Anambra_Female af2
    UNION ALL
    SELECT Site, CASES FROM Bayelsa_Female bf
    UNION ALL
    SELECT Site, CASES FROM Borno_Female bf
    UNION ALL
    SELECT Site, CASES FROM CrossRiver_Female crf 
    UNION ALL
    SELECT Site, CASES FROM Edo_Female ef2
    UNION ALL
     SELECT Site, CASES FROM Ekiti_Female ef
   UNION ALL  
    SELECT Site, CASES FROM Enugu_Female ef 
    UNION ALL
    SELECT Site, CASES FROM Gombe_Female gf 
    UNION ALL
    SELECT Site, CASES FROM Lagos_LASUTH_Female llf
    UNION ALL  
    SELECT Site, CASES FROM Lagos_LUTH_Female llf2  
    UNION ALL
    SELECT Site, CASES FROM Nassarawa_Female nf
    UNION ALL
    SELECT Site, CASES FROM Rivers_Female rf 
    UNION ALL
    SELECT Site, CASES FROM Sokoto_Female sf
) AS CombinedData
GROUP BY Site
ORDER BY TotalCases DESC 
LIMIT 10