ALTER TABLE Users
ADD GroupID INT FOREIGN KEY REFERENCES Groups(GroupID);
INSERT Groups VALUES ('Mummies');
INSERT Groups VALUES ('Vampires');
INSERT Groups VALUES ('Zombies');
INSERT Users VALUES ('BloodyOne', '12345', 'Dracula First',  GETDATE(), 5);
INSERT Users VALUES ('Shiney', '12345', 'Hawkey', GETDATE(), 5);
INSERT Users VALUES ('stormer', '12345', 'Brainer', GETDATE(), 6);
INSERT Users VALUES ('blackEye', '12345', 'Cold Rock', GETDATE(), 4);