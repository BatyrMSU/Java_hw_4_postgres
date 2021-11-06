ALTER TABLE lessons_reviews
    ADD lesson_stars INT DEFAULT 0,
    ADD CONSTRAINT valid_score CHECK (lesson_stars >= 0 AND lesson_stars <= 5);