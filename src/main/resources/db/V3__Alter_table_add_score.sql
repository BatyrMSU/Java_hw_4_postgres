ALTER TABLE lessons_reviews
    ADD score INT DEFAULT 0,
    ADD CONSTRAINT valid_score CHECK (score >= 0 AND score <= 5);