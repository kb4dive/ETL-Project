/*
CREATE TABLE "alcohol_suicide" (
"Country" VARCHAR NOT NULL,
"HappinessScore" FLOAT NOT NULL,
"Beer_PerCapita" INTEGER NOT NULL,
"Spirit_PerCapita" INTEGER NOT NULL,
"Wine_PerCapita" INTEGER NOT NULL,
"Population" INTEGER NOT NULL,
"SexRatio" FLOAT NOT NULL,
"EmploymentPct" VARCHAR NOT NULL,
"UnemploymentPct" VARCHAR NOT NULL,
"gdp_for_year" VARCHAR NOT NULL,
"suicides_no" FLOAT NOT NULL
)*/

INSERT INTO "alcohol_suicide"
select 
h."Country",
"HappinessScore",
"Beer_PerCapita",
"Spirit_PerCapita",
"Wine_PerCapita",
"Population",
"SexRatio",
"EmploymentPct",
"UnemploymentPct",
"gdp_for_year",
"suicides_no"
from 
(select "Country", 
"HappinessScore",
"Beer_PerCapita",
"Spirit_PerCapita",
"Wine_PerCapita"
from happiness) h
JOIN (select "Country",
	"Population",
	"SexRatio",
	"EmploymentPct",
	"UnemploymentPct"
	from country_profile) cp on cp."Country" = h."Country"
JOIN (select "Country",
	"gdp_for_year",
	sum("suicides_no") as "suicides_no"
	from suicide
	group by "Country", "gdp_for_year"
	order by "Country") s on s."Country" = h."Country"
	
SELECT * FROM "alcohol_suicide"	
ORDER BY suicides_no desc