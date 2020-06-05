INSERT INTO "users"("id", "email", "firstname", "lastname", "created_at", "updated_at") VALUES (1,2,3,4)

SELECT * FROM users

SELECT * FROM users WHERE id="1"

UPDATE "users" SET "id"="1","email"="2","firstname"="3","lastname"="4" WHERE id="1"

DELETE FROM "users" WHERE id="1"