USE thailand;
--
-- UPDATE provinces
-- SET name_en = "Bangkok"
-- WHERE id = 1
--     AND code = 10;
--
--
-- INSERT INTO provinces (code, name_th, name_en, geography_id)
-- VALUES (98, "ทวิน", "Twin", 2);
--
--
--
-- DELETE FROM provinces
-- WHERE id = 78;
--
--
SELECT CONCAT(name_th, "(", name_en, ")") as ProvinceName
FROM provinces;
-- WHERE LENGTH(name_en) > 15;
-- SELECT CONCAT("SQL", " ", "Tootou") AS CONCAT_STR;