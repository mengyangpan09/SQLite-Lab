UPDATE "users" SET "password" = '02c77002a0c646684b3325959fe147b2'
WHERE "user" = 'admin';

DELETE FROM "user_logs";

INSERT INTO "user_logs" ("type","old_username","new_username","old_password","new_password")
VALUES
('update','admin','admin','e10adc3949ba59abbe56e057f20f883e','cb4772eeda0ae562119b6c4be2e0889a');
