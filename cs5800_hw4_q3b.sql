
CREATE TABLE music.Instrument (
                Name VARCHAR NOT NULL,
                Pitch VARCHAR NOT NULL,
                CONSTRAINT instrument_name PRIMARY KEY (Name)
);


CREATE TABLE music.Address (
                AddressID INTEGER NOT NULL,
                City VARCHAR NOT NULL,
                State VARCHAR NOT NULL,
                Telephone VARCHAR NOT NULL,
                ZipCode VARCHAR NOT NULL,
                Street1 VARCHAR NOT NULL,
                Street2 VARCHAR NOT NULL,
                Number INTEGER NOT NULL,
                CONSTRAINT addressid PRIMARY KEY (AddressID)
);


CREATE TABLE music.Musician (
                SSN INTEGER NOT NULL,
                AddressID INTEGER NOT NULL,
                Name VARCHAR NOT NULL,
                CONSTRAINT musician_ssn PRIMARY KEY (SSN)
);


CREATE TABLE music.Play (
                SSN INTEGER NOT NULL,
                Name VARCHAR NOT NULL,
                CONSTRAINT ssn_name PRIMARY KEY (SSN, Name)
);


CREATE TABLE music.Album (
                AlbumID INTEGER NOT NULL,
                Title VARCHAR NOT NULL,
                SSN_producer INTEGER NOT NULL,
                Release_Date DATE NOT NULL,
                Format VARCHAR NOT NULL,
                Age INTEGER NOT NULL,
                CONSTRAINT albumid PRIMARY KEY (AlbumID)
);


CREATE TABLE music.Song (
                Title VARCHAR NOT NULL,
                AlbumID INTEGER NOT NULL,
                SSN_author INTEGER NOT NULL,
                Length INTEGER NOT NULL,
                CONSTRAINT song_title PRIMARY KEY (Title)
);


CREATE TABLE music.perform (
                SSN INTEGER NOT NULL,
                Title VARCHAR NOT NULL,
                CONSTRAINT perform_pk PRIMARY KEY (SSN, Title)
);


CREATE TABLE music.Sound (
                Name VARCHAR NOT NULL,
                Title VARCHAR NOT NULL,
                CONSTRAINT sound_pk PRIMARY KEY (Name, Title)
);


ALTER TABLE music.Play ADD CONSTRAINT instrument_play_fk
FOREIGN KEY (Name)
REFERENCES music.Instrument (Name)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE music.Sound ADD CONSTRAINT instrument_sound_fk
FOREIGN KEY (Name)
REFERENCES music.Instrument (Name)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE music.Musician ADD CONSTRAINT address_musician_fk
FOREIGN KEY (AddressID)
REFERENCES music.Address (AddressID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE music.Song ADD CONSTRAINT musician_song_fk1
FOREIGN KEY (Musician_SSN, SSN_author)
REFERENCES music.Musician (SSN)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE music.Album ADD CONSTRAINT musician_album_fk
FOREIGN KEY (SSN_producer)
REFERENCES music.Musician (SSN)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE music.Play ADD CONSTRAINT musician_play_fk
FOREIGN KEY (SSN)
REFERENCES music.Musician (SSN)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE music.perform ADD CONSTRAINT musician_perform_fk
FOREIGN KEY (SSN)
REFERENCES music.Musician (SSN)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE music.Song ADD CONSTRAINT album_song_fk
FOREIGN KEY (AlbumID)
REFERENCES music.Album (AlbumID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE music.Sound ADD CONSTRAINT song_sound_fk
FOREIGN KEY (Title)
REFERENCES music.Song (Title)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE music.perform ADD CONSTRAINT song_perform_fk
FOREIGN KEY (Title)
REFERENCES music.Song (Title)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
