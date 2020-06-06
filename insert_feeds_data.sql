USE mysql_workshop;

-- แชร์ feeds post_id = 11 ของ user_id =1
INSERT INTO share_users (post_id, user_id) VALUES(11, 1)

-- comment post ของ post_id = 8 จาก user_id =1
INSERT INTO comments (post_id, user_id, messages) VALUES(8, 1, 'ในใจโยมมีอาตมาบ้างมั๊ย')

-- clap post post_id = 23 จาก user_id =1
INSERT INTO claps (post_id, user_id) VALUES('23', '1')

-- ซ่อน post post_id = 20 จาก user_id =1
INSERT INTO hidden_users (post_id, user_id) VALUES('20', '1')