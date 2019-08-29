USE pokemon_adlister_db;

INSERT INTO users(username,email,password)
VALUES('WaterMasterMisty','misty@pokemon','$2a$12$uLOuJU6da7XR5DuHoNMpWOKlDx.vZh4JDrH757y7/znnLsVjY0tD2'),
      ('ProfOak','sam_oak@pokemon.com','$2a$12$fiPQODbK2zhD6eVU/OukRObjqs1MU5UMDTP3MqBrjwS4gJqmyF2iC'),
      ('RockyBrock','ladykiller@pokemon.com','$2a$12$MVD40FUBVlOOsylqvAYdTug/w0v3BxjnhHURt50P/2hsrDMJpPMA6'),
      ('RocketJames','james@teamrocket.com','$2a$12$CK/9bTjWSEWeFAwYD6hV2Omw69ItiornrCOgcymu672Mvqh4d1bnS'),
      ('RocketJessie','jessie@teamrocket.com','$2a$12$sI/WS3TKOrQ4aPAxHGOZ7eShRo7TdWy/jDbyTAM.IZ2yVR8G.gCc2'),
      ('AshBestThereEverWas','gottacatch@pokemon.com','$2a$12$Rw6uCkUdmX73ObPpUDIY/eJcxhv/oUuNMPtfFZrHk16WHSeyu.0Du');


INSERT INTO  ads(user_id,title,description)
VALUES(1,'Jigglypuff','Jigglypuff won\'t stop using Sing! I need it to go away and stop putting me to sleep!'),
      (2,'Looking for a trainer to catch them all', 'I\'ve got a brand new PokeDex to give away to a any new trainer! Must be 10 years old and willing to travel the region.'),
      (3,'Handsome bachelor looking for his Nidoqueen','Single and looking to be Charmed by a lovely lady! I\'ll be sure to give you plenty of Presents, Nuzzle up to you after a long day, and Astonish you with my good looks! '),
      (6,'Looking to battle it out!','I\'m looking to battle with the best of them! I\'ll challenge anyone, anywhere, no matter what! Let\'s get stronger together and (Shell) Smash through the competition! I need to be the very best, and catch \'em all!!'),
      (4,'Recruiting for new Team','Follow Me and help us take over the world and everyone\'s Pokemon! We\'ll be the best team around and Disable all who oppose us!');
