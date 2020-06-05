INSERT INTO "follows"("id", "following", "user_id", "created_at") VALUES ("1","2","3")

SELECT "id", "following", "user_id" FROM "follows" WHERE id=1

UPDATE "follows" SET "id"="1","following"="2","user_id"="3" WHERE id=1

DELETE FROM "follows" WHERE id=1