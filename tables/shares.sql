INSERT INTO "shares"("id", "post_id", "user_id") VALUES ("1","2","3")

SELECT "id", "post_id", "user_id" FROM "shares" WHERE id=1

UPDATE "shares" SET "id"="1","post_id"="2","user_id"="3" WHERE id=1

DELETE FROM "shares" WHERE id=1