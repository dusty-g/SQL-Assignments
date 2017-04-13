select name, languages.language, languages.percentage from countries 
join languages on languages.country_id = countries.id
where languages.language = 'Slovene'
order by percentage desc;

select countries.name, count(cities.id) as city_count from countries
join cities on cities.country_id = countries.id
group by countries.name
order by city_count desc;

select countries.name, count(cities.population) as total from countries
join cities on cities.country_id = countries.id
where cities.population > 500000 and countries.name = 'Mexico'
group by name
order by total desc;

select countries.name, languages.language, languages.percentage from countries
left join languages on languages.country_id = countries.id
where languages.percentage > 89
group by countries.name
order by languages.percentage desc;

select countries.name, countries.surface_area, countries.population from countries
where countries.surface_area < 501 and countries.population > 100000;

select countries.name, countries.government_form, capital, life_expectancy from countries
where government_form = "Constitutional Monarchy" and capital > 200 and life_expectancy > 75;

select countries.name, cities.name, cities.district, cities.population from countries
join cities on cities.country_id = countries.id
where cities.district = "Buenos Aires" and cities.population > 500000;

select region, count(region) as countries from countries
group by region
order by countries desc;



