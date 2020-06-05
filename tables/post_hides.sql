INSERT INTO "post_hide"("id", "post_id", "user_id") VALUES ("1","2","3")

SELECT "id", "post_id", "user_id" FROM "post_hide" WHERE id=1

UPDATE "post_hide" SET "id"="1","post_id"="2","user_id"="3" WHERE id=1

DELETE FROM "post_hide" WHERE id=1