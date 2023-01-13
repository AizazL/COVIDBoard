/*

Dataset is of COVID-19 statistics in early 2023 from the COVID-19 database of OurWorldinData.org

Following queries are used to interpolate this data and determine some unprovided statistics from them, as well as group by Continent / Country to view statistics from a different perspective.

Some of these queries have been used to create tables for visualization in Tableau.

*/




-- All Data 
SELECT *
FROM dbo.Sheet1$


-- Total Cases by Continent
SELECT location, MAX(CAST(total_cases as int)) as TotalCases
FROM dbo.Sheet1$
WHERE (continent is null)
AND location not in ('High income', 'Upper middle income', 'Lower middle income', 'European Union', 'Low income', 'International')

GROUP by location
ORDER by TotalCases desc


-- Total Cases by Country
SELECT location, MAX(CAST(total_cases as int)) as TotalCases
FROM dbo.Sheet1$
WHERE (continent is not null)
AND location not in ('High income', 'Upper middle income', 'Lower middle income', 'European Union', 'Low income', 'International')

GROUP by location
ORDER by TotalCases desc


-- Deaths by Continent
SELECT location, MAX(CAST(total_deaths as int)) as TotalDeaths
FROM dbo.Sheet1$
WHERE (continent is null)
AND location not in ('High income', 'Upper middle income', 'Lower middle income', 'European Union', 'Low income', 'International')

GROUP by location
ORDER by TotalDeaths desc

-- Deaths by Country
SELECT location, MAX(CAST(total_deaths as int)) as TotalDeaths
FROM dbo.Sheet1$
WHERE (continent is not null)
AND location not in ('High income', 'Upper middle income', 'Lower middle income', 'European Union', 'Low income', 'International')

GROUP by location
ORDER by TotalDeaths desc

-- People Fully Vaccinated by Continent
SELECT location, MAX(CAST(people_fully_vaccinated as bigint)) as TotalFullyVaccinated
FROM dbo.Sheet1$
WHERE (continent is null)
AND location not in ('High income', 'Upper middle income', 'Lower middle income', 'European Union', 'Low income', 'International')

GROUP by location
ORDER by TotalFullyVaccinated desc


-- People Fully Vaccinated by Country
SELECT location, MAX(CAST(people_fully_vaccinated as bigint)) as TotalFullyVaccinated
FROM dbo.Sheet1$
WHERE (continent is not null)
AND location not in ('High income', 'Upper middle income', 'Lower middle income', 'European Union', 'Low income', 'International')

GROUP by location
ORDER by TotalFullyVaccinated desc

-- Infection Percentage of Population by Country
Select Location, MAX(total_cases) as TotalCases, population, (MAX(total_cases)/population * 100) as InfectionPercentage
From dbo.Sheet1$
WHERE (continent is not null)
AND location not in ('High income', 'Upper middle income', 'Lower middle income', 'European Union', 'Low income', 'International')

GROUP by location, population
ORDER by InfectionPercentage desc

-- Death Percentage of Population by Country
Select Location, MAX(total_cases) as TotalCases, MAX(total_deaths) as TotalDeaths, population,  SUM(CAST(new_deaths as int)) /SUM(new_cases) * 100 as DeathPercentage
From dbo.Sheet1$
WHERE (continent is not null)
AND location not in ('High income', 'Upper middle income', 'Lower middle income', 'European Union', 'Low income', 'International')

GROUP by location, population
ORDER by DeathPercentage desc

-- Global Stats: Cases, Deaths, Death Percentage,
Select SUM(new_cases) as Total_Cases, SUM(CAST(new_deaths as int)) as Total_Deaths, SUM(CAST(new_deaths as int)) / SUM(new_cases) * 100 as GlobalDeathPercentage,  SUM(CAST(new_vaccinations as bigint)) as Total_Vaccination_Shots, (SUM(CAST(new_vaccinations as bigint)) / 8010750559) as AverageShotsPerPerson
From dbo.Sheet1$
where continent is not null


