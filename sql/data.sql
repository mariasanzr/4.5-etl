ALTER TABLE universities
ADD PRIMARY KEY (id);

ALTER TABLE states
ADD PRIMARY KEY (id);

ALTER TABLE universities
ADD CONSTRAINT fk_states_id
FOREIGN KEY (states_id) REFERENCES states(id);

ALTER TABLE teams_players
ADD PRIMARY KEY (id);

ALTER TABLE teams_players
ADD CONSTRAINT fk_universities_id
FOREIGN KEY (uni_id) REFERENCES universities(id);