--drop table suicide
--drop table country_profile
--drop table happiness

CREATE TABLE "suicide" (
   "Country" VARCHAR   NOT NULL,
   "year" INT   NOT NULL,
   "sex" VARCHAR   NOT NULL,
   "age" VARCHAR   NOT NULL,
   "suicides_no" FLOAT   NOT NULL,
   "population" INTEGER   NOT NULL,
   "suicides_100k_pop" FLOAT   NOT NULL,
   "gdp_for_year" VARCHAR   NOT NULL,
   "gdp_per_capita" INTEGER   NOT NULL
);


CREATE TABLE "country_profile" (
   "Country" VARCHAR   NOT NULL,
   "Population" INTEGER   NOT NULL,
   "SexRatio" FLOAT   NOT NULL,
   "EmploymentPct" VARCHAR   NOT NULL,
   "UnemploymentPct" VARCHAR   NOT NULL
);


CREATE TABLE "happiness" (
   "Country" varchar   NOT NULL,
   "HappinessScore" FLOAT   NOT NULL,
 	"HDI" INTEGER NOT NULL,
   "GDP_PerCapita" FLOAT   NOT NULL,
   "Beer_PerCapita" INTEGER   NOT NULL,
   "Spirit_PerCapita" INTEGER   NOT NULL,
   "Wine_PerCapita" INTEGER   NOT NULL,
   CONSTRAINT "pk_happiness" PRIMARY KEY (
       "Country"
    )
);
--ALTER TABLE "suicide" ADD CONSTRAINT "fk_suicide_Country" FOREIGN KEY("Country")
--REFERENCES "happiness" ("Country");
--ALTER TABLE "contery_profile" ADD CONSTRAINT "fk_contery_profile_Country" FOREIGN KEY("Country")
--REFERENCES "happiness" ("Country");
