create database weather_forecast;
use weather_forecast;

select * from weather_forecast_data;

-- temperature is greater than 25

select count(temperature) from weather_forecast_data where temperature > 25;

-- rain and no rain
select count(rain) from weather_forecast_data where rain='rain';

select count(rain) from weather_forecast_data where rain='no rain';

-- humidity between 40 to 70
select count(humidity) from weather_forecast_data where humidity between 40 and 70;

-- min max operator
select min(temperature) as smallesttemperature from weather_forecast_data;
select max(temperature) as largesttemperature from weather_forecast_data;

-- and, or, not
select * from weather_forecast_data where temperature<25 and rain='No rain';
select * from weather_forecast_data where temperature<24 or humidity<89;
select * from weather_forecast_data where not rain='no rain';

-- limit clause
select * from weather_forecast_data where temperature limit 25;

-- avg,sum
select avg(temperature) from weather_forecast_data;
select sum(humidity) from weather_forecast_data;

-- group by
select count(temperature), 'rain' from weather_forecast_data group by temperature;

