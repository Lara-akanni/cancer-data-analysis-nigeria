-- Aggregating all Sites of cancer across all Male states 
SELECT Site, SUM (CASES) AS TotalCases
FROM (
    SELECT Site, CASES FROM Abuja_Male am
    UNION ALL
    SELECT Site, CASES FROM Anambra_Male am2
    UNION ALL
    SELECT Site, CASES FROM Bayelsa_Male bm
    UNION ALL
    SELECT Site, CASES FROM Borno_Male bm2
    UNION ALL
    SELECT Site, CASES FROM CrossRiver_Male crm
    UNION ALL
    SELECT Site, CASES FROM Edo_Male em
    UNION ALL
     SELECT Site, CASES FROM Ekiti_Male em2
   UNION ALL  
    SELECT Site, CASES FROM Enugu_Male em3
    UNION ALL
    SELECT Site, CASES FROM Gombe_Male gm
    UNION ALL
    SELECT Site, CASES FROM Lagos_LASUTH_Male llm
    UNION ALL  
    SELECT Site, CASES FROM Lagos_LUTH_Male llm2  
    UNION ALL
    SELECT Site, CASES FROM Nassarawa_Male nm
    UNION ALL
    SELECT Site, CASES FROM Rivers_Male rm
    UNION ALL
    SELECT Site, CASES FROM Sokoto_Male sm 
) AS CombinedData
GROUP BY Site
ORDER BY TotalCases DESC 
LIMIT 10