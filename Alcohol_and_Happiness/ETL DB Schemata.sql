CREATE TABLE worldhappinessreport2021(
	country_name VARCHAR,
	reginal_indicator VARCHAR,
	ladder_score Numeric,
	standard_error_of_ladder Numeric,
	upperwhisker Numeric,
	lowerwhisker Numeric,
    logged_gdp_per_capita Numeric,
    social_suppor Numeric,
    healthy_life_expectancy Numeric,
    freedom_to_make_life_choices Numeric,
    generosity Numeric,
    perceptions_of_corruption Numeric,
    ladder_score_in_dystopia Numeric,
    dystopia_plus_residual Numeric
);



CREATE TABLE HappinessAlcoholConsumption(
	country VARCHAR(25),
	region VARCHAR(100),
	hemisphere VARCHAR(20),
	happinessscore Numeric,
	hdi Numeric,
	gdp_percapita Numeric,
	beer_percapita Numeric,
	spirit_percapita Numeric,
	wine_percapita Numeric,

);

CREATE TABLE LifeExpectancy(
	countryname VARCHAR,
	IndicatorName VARCHAR,
	Year_2019 Numeric
	
);

#created this table with pandas 

SELECT LE.countryname, HP.HappinessScore, WH.Healthy_life_expectancy
FROM worldhappinessreport2021 as WH
right JOIN HappinessAlcoholConsumption as HP    
ON WH.country_name=HP.country
left join lifeexpectancy as LE
ON WH.country_name=LE.countryname
ORDER BY "happinessscore" DESC


#original join of all 3 tables

SELECT LE.countryname, HP.HappinessScore, WH.Healthy_life_expectancy, LE.year_2019, WH.social_support, WH.Generosity, HP.beer_percapita, HP.spirit_percapita, HP.wine_percapita
FROM worldhappinessreport2021 as WH
right JOIN HappinessAlcoholConsumption as HP    
ON WH.country_name=HP.country
left join lifeexpectancy as LE
ON WH.country_name=LE.countryname
ORDER BY "happinessscore" DESC