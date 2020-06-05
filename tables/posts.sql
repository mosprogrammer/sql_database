INSERT INTO "posts"("id", "message", "user_id", "deleted", "created_at", "updated_at") VALUES ("1","2","3","4","5","6")

SELECT "id", "message", "user_id", "deleted"FROM "posts" WHERE id=1

UPDATE "posts" SET "id"="1","message"="2","user_id"="3","deleted"="4" WHERE id=1

DELETE FROM "posts" WHERE id=1