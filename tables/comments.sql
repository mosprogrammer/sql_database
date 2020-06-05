INSERT INTO "comments"("id", "message", "post_id", "user_id") VALUES ("1","2","3","4")

SELECT "id", "message", "post_id", "user_id" FROM "comments" WHERE id=1

UPDATE "comments" SET "id"="1", "message"="2", "post_id"="3","user_id"="4" WHERE id=1

DELETE FROM "comments" WHERE id=1