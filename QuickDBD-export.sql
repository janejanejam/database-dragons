-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/8haxFP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "state" (
    "state_id" VARCHAR(2)   NOT NULL,
    "state_name" VARCHAR(25)   NOT NULL,
    CONSTRAINT "pk_state" PRIMARY KEY (
        "state_id","state_name"
     )
);

CREATE TABLE "indicator" (
    "state" VARCHAR(2)   NOT NULL,
    "data_completeness" FLOAT   NOT NULL,
    "disability-_or_illness-related_voting_problems" FLOAT   NOT NULL,
    "mail_ballots_rejected" FLOAT   NOT NULL,
    "mail_ballots_unreturned" FLOAT   NOT NULL,
    "military_and_overseas_ballots_rejected" FLOAT   NOT NULL,
    "military_and_overseas_ballots_unreturned" FLOAT   NOT NULL,
    "online_registration_available" FLOAT   NOT NULL,
    "post_election_audit_required" FLOAT   NOT NULL,
    "provisional_ballots_cast" FLOAT   NOT NULL,
    "provisional_ballots_rejected" FLOAT   NOT NULL,
    "registration_or_absentee_ballot_problems" FLOAT   NOT NULL,
    "registrations_rejected" FLOAT   NOT NULL,
    "residual_vote_rate" FLOAT   NOT NULL,
    "turnout" FLOAT   NOT NULL,
    "voter_registration_rate" FLOAT   NOT NULL,
    "voting_information_lookup_tools_available" FLOAT   NOT NULL,
    "voting_wait_time" FLOAT   NOT NULL
);

CREATE TABLE "census_voter_registration" (
    "state_name" VARCHAR(25)   NOT NULL,
    "population" INT   NOT NULL,
    "citizen_population" INT   NOT NULL,
    "total_registered" INT   NOT NULL,
    "total_voted" INT   NOT NULL,
    "percent_registered" FLOAT   NOT NULL,
    "percent_voted" FLOAT   NOT NULL
);

CREATE TABLE "census_demographics" (
    "state_name" VARCHAR(25)   NOT NULL,
    "household_income" FLOAT   NOT NULL,
    "population" FLOAT   NOT NULL,
    "white_alone" FLOAT   NOT NULL,
    "black_or_african_american_alone" FLOAT   NOT NULL,
    "american_indian_and_alaska_native_alone" FLOAT   NOT NULL,
    "asian_alone" FLOAT   NOT NULL,
    "native_hawaiian_and_other_pacific_islander_alone" FLOAT   NOT NULL,
    "some_other_race_alone" FLOAT   NOT NULL,
    "two_or_more_races" FLOAT   NOT NULL,
    "two_races_including_some_other_race" FLOAT   NOT NULL,
    "two_races_excluding_some_other_race_and_three_or_more_races" FLOAT   NOT NULL,
    "median_age" FLOAT   NOT NULL,
    "per_capita_income" FLOAT   NOT NULL,
    "total_employable_population_over_16" FLOAT   NOT NULL,
    "total_in_labor_force" FLOAT   NOT NULL,
    "civilian_labor_force_unemployed" FLOAT   NOT NULL,
    "poverty_count" FLOAT   NOT NULL,
    "population_total_count_by_sex" TEXT   NOT NULL,
    "total_male" FLOAT   NOT NULL,
    "total_female" FLOAT   NOT NULL,
    "citizenship_population_count_citizen_and_non-citizen" FLOAT   NOT NULL,
    "non_citizen" FLOAT   NOT NULL,
    "poverty_rate" FLOAT   NOT NULL,
    "unemployement_rate" FLOAT   NOT NULL,
    "non-citizen" FLOAT   NOT NULL,
    "citizen" FLOAT   NOT NULL,
    "female_voting_population_-_18&up" FLOAT   NOT NULL,
    "male_voting_population_-_18&up" FLOAT   NOT NULL
);

ALTER TABLE "indicator" ADD CONSTRAINT "fk_indicator_state" FOREIGN KEY("state")
REFERENCES "state" ("state_id");

ALTER TABLE "census_voter_registration" ADD CONSTRAINT "fk_census_voter_registration_state_name" FOREIGN KEY("state_name")
REFERENCES "state" ("state_name");

ALTER TABLE "census_demographics" ADD CONSTRAINT "fk_census_demographics_state_name" FOREIGN KEY("state_name")
REFERENCES "state" ("state_name");

