USE pokemon_adlister_db;

INSERT INTO users(username,email,password)
VALUES('WaterMasterMisty','misty@pokemon','$2a$12$uLOuJU6da7XR5DuHoNMpWOKlDx.vZh4JDrH757y7/znnLsVjY0tD2'),
      ('ProfOak','sam_oak@pokemon.com','$2a$12$fiPQODbK2zhD6eVU/OukRObjqs1MU5UMDTP3MqBrjwS4gJqmyF2iC'),
      ('RockyBrock','ladykiller@pokemon.com','$2a$12$MVD40FUBVlOOsylqvAYdTug/w0v3BxjnhHURt50P/2hsrDMJpPMA6'),
      ('RocketJames','james@teamrocket.com','$2a$12$CK/9bTjWSEWeFAwYD6hV2Omw69ItiornrCOgcymu672Mvqh4d1bnS'),
      ('RocketJessie','jessie@teamrocket.com','$2a$12$sI/WS3TKOrQ4aPAxHGOZ7eShRo7TdWy/jDbyTAM.IZ2yVR8G.gCc2'),
      ('AshBestThereEverWas','gottacatch@pokemon.com','$2a$12$Rw6uCkUdmX73ObPpUDIY/eJcxhv/oUuNMPtfFZrHk16WHSeyu.0Du'),
       ('PokeBallMakerKurt','kurt@pokemon.com','$2a$12$YOBh.RuviezMB6tO.8UwrOdpeVQsmyodMntEpRRstvevHMsl9aJe.'),
       ('ResearcherGary','smell_ya@pokemon.com','$2a$12$LfOBXZpVIYQBpCJ/fPBI2e4gArhqiKirxeJOD9NBDKuoVH7kgehn2'),
       ('BerryNicole','nicole@pokemon.com','$2a$12$8QDK1AzgdWfOQchyzl/fkORkf.AcRNouOkqLbVSygiq8WXmNlmMOq'),
       ('LittlerootBrendan','brendan@pokemon.com','$2a$12$/aYDRulGW3qTdj7JEmLnfenLVhxs7TP.0wbzmby.o4f9bZ2.Ed0Fy');


INSERT INTO  ads(user_id,title,description)
VALUES(1,'Jigglypuff','Jigglypuff won\'t stop using Sing! I need it to go away and stop putting me to sleep!'),
      (2,'Looking for a trainer to catch them all', 'I\'ve got a brand new PokeDex to give away to a any new trainer! Must be 10 years old and willing to travel the region.'),
      (3,'Handsome bachelor looking for his Nidoqueen','Single and looking to be Charmed by a lovely lady! I\'ll be sure to give you plenty of Presents, Nuzzle up to you after a long day, and Astonish you with my good looks! '),
      (6,'Looking to battle it out!','I\'m looking to battle with the best of them! I\'ll challenge anyone, anywhere, no matter what! Let\'s get stronger together and (Shell) Smash through the competition! I need to be the very best, and catch \'em all!!'),
      (4,'Recruiting for new Team','Follow Me and help us take over the world and everyone\'s Pokemon! We\'ll be the best team around and Disable all who oppose us!'),
       (7,'Custom Pokeballs!','Bring me different Apricorns and I\'ll make custom Pokeballs from it!'),
       (3,'Too many Potions!','There was a sale and I bought too many Potions, please come and take some off my hands!'),
       (8,'Giving aways TMs/HMs','Looking to smash some pesky rocks that are in your way? Looking to Surf over to that nearby island? Come see me and I\'ll give out the TMs/HMs that you need!'),
       (9,'Giving out Berries~','Come down to the Pretty Petal Flower Shop and pick up some yummy berries for your hungry Pokemon! Get here before we run out~'),
       (10,'Secret Base Decor','Looking to buy/sell/trade secret base decorations with anyone that is willing. Send me a message with what you\'re looking for and we\'ll talk.');


INSERT INTO  categories(cat)
    VALUES('Pokeballs'),
    ('Medicine'),
    ('TMs& HMs'),
    ('Berries'),
    ('Tech'),
    ('Misc'),
    ('Trading'),
    ( 'Social');

INSERT INTO  adCategories(ad_id,categories_id)
    VALUES(1,7),
    (2,5),
    (3,8),
    (4,8),
    (5,8),
    (6,1),
    (7,2),
    (8,3),
    (9,4),
    (10,6);