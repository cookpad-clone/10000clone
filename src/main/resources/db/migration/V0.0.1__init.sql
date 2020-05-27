CREATE TABLE recipe_type (
    `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `type` TINYINT UNSIGNED NOT NULL COMMENT '레시피 타입',
    `desc` VARCHAR(30) NOT NULL COMMENT '설명',
    `createdAt` datetime NOT NULL COMMENT '생성 날짜',
    `updateAt` datetime NOT NULL COMMENT '변경 날짜',
    PRIMARY KEY (`id`, `type`),
    INDEX `idx_recipe_type` (`type`, `id`)
) ENGINE = InnoDB;

INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '밑반찬', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '메인반찬', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '국/탕', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '찌개', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '디저트', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '면/만두', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '밥/죽/떡', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '퓨전', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '김치/젓갈/장류', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '양념/소스/잼', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '양식', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '샐러드', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '스프', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '빵', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '과자', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '차/음료/술', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(1, '기타', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(2, '일상', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(2, '초스피드', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(2, '손님접대', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(2, '술안주', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(2, '다이어트', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(2, '도시락', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(2, '영양식', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(2, '간식', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(2, '야식', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(2, '푸드스타일링', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(2, '해장', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(2, '명절', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(2, '이유식', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(2, '기타', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '소고기', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '돼지고기', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '닭고기', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '육류', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '채소류', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '해물류', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '달걀/유제품', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '가공식품류', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '쌀', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '밀가루', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '건어물류', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '버섯류', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '과일류', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '콩/견과류', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '곡류', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(3, '기타', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(4, '볶음', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(4, '끓이기', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(4, '부침', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(4, '조림', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(4, '무침', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(4, '찜', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(4, '절임', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(4, '튀김', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(4, '삶기', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(4, '굽기', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(4, '데치기', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(4, '회', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO recipe_type (type, `desc`, createdAt, updateAt) VALUES(4, '기타', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);