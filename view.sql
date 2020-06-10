use thailand;
--
-- CREATE OR REPLACE VIEW ThailandView AS
-- SELECT p.name_th AS ProviceName,
--     a.name_th AS AmphureName,
--     d.name_th AS DistrictName,
--     d.zip_code AS ZipCode
-- FROM provinces AS p
--     INNER JOIN amphures AS a ON a.province_id = p.id
--     INNER JOIN districts AS d ON d.amphure_id = a.id;
--
SELECT *
FROM ThailandView
WHERE ProviceName = "กรุงเทพมหานคร"
LIMIT 10 OFFSET 10;