-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/8haxFP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "state" (
    "state_id" VARCHAR(2)   NOT NULL,
    "state_name" VARCHAR(25)   NOT NULL,
    CONSTRAINT "pk_state" PRIMARY KEY (
        "state_id"
     )
);

CREATE TABLE "indicator" (
    "state" VARCHAR(2)   NOT NULL,
    "data_completeness" FLOAT   NOT NULL,
    "disability_or_illness-related_voting_problems" FLOAT   NOT NULL,
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
    "state" VARCHAR(2)   NOT NULL,
    "population" INT   NOT NULL,
    "citizen_population" INT   NOT NULL,
    "total_registered" INT   NOT NULL,
    "percent_registered" FLOAT   NOT NULL,
    "total_voted" INT   NOT NULL,
    "percent_voted" FLOAT   NOT NULL
);

CREATE TABLE "census_demographics" (
    "state" VARCHAR(2)   NOT NULL,
    "median_income" FLOAT   NOT NULL,
    "Household_Income" FLOAT   NOT NULL,
    "Per_Capita_Income" FLOAT   NOT NULL,
    "Poverty_Count" INT   NOT NULL,
    "Total_employable_population_over_16" INT   NOT NULL,
    "Total_in_labor_force" INT   NOT NULL,
    "Civilian_labor_force_Unemployed" INT   NOT NULL,
    "Poverty_Rate" FLOAT   NOT NULL,
    "Unemployment_Rate" FLOAT   NOT NULL
);

ALTER TABLE "indicator" ADD CONSTRAINT "fk_indicator_state" FOREIGN KEY("state")
REFERENCES "state" ("state_id");

ALTER TABLE "census_voter_registration" ADD CONSTRAINT "fk_census_voter_registration_state" FOREIGN KEY("state")
REFERENCES "state" ("state_id");

ALTER TABLE "census_demographics" ADD CONSTRAINT "fk_census_demographics_state" FOREIGN KEY("state")
REFERENCES "state" ("state_id");