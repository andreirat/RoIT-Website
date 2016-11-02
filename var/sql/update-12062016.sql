RENAME TABLE `member_avatar` TO `avatars`;

CREATE TABLE ambasadors (id INT AUTO_INCREMENT NOT NULL, center_id INT DEFAULT NULL, firstname VARCHAR(255) NOT NULL, lastname VARCHAR(255) NOT NULL, country VARCHAR(255) NOT NULL, city VARCHAR(255) NOT NULL, email VARCHAR(255) NOT NULL, telephone VARCHAR(255) DEFAULT NULL, reason LONGTEXT NOT NULL, INDEX IDX_C5A277755932F377 (center_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB;
ALTER TABLE ambasadors ADD CONSTRAINT FK_C5A277755932F377 FOREIGN KEY (center_id) REFERENCES centres (id);


PHP Warning:  Module 'intl' already loaded in Unknown on line 0
CREATE TABLE partners (id INT AUTO_INCREMENT NOT NULL, center_id INT DEFAULT NULL, logo_id INT DEFAULT NULL, name VARCHAR(255) NOT NULL, country VARCHAR(255) NOT NULL, city VARCHAR(255) NOT NULL, email VARCHAR(255) NOT NULL, telephone VARCHAR(255) DEFAULT NULL, website VARCHAR(255) DEFAULT NULL, facebook VARCHAR(255) DEFAULT NULL, linkedIn VARCHAR(255) DEFAULT NULL, type VARCHAR(50) NOT NULL, description LONGTEXT NOT NULL, INDEX IDX_EFEB51645932F377 (center_id), UNIQUE INDEX UNIQ_EFEB5164F98F144A (logo_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE = InnoDB;
ALTER TABLE partners ADD CONSTRAINT FK_EFEB51645932F377 FOREIGN KEY (center_id) REFERENCES centres (id);
ALTER TABLE partners ADD CONSTRAINT FK_EFEB5164F98F144A FOREIGN KEY (logo_id) REFERENCES avatar (id);