select date_format(billing.charged_datetime, "%M") as month, date_format(billing.charged_datetime, "%Y") as year, sum(amount) as revenue 
from billing
where date_format(billing.charged_datetime, "%Y") = "2012" and date_format(billing.charged_datetime, "%m") = "03"
group by date_format(billing.charged_datetime, "%M")
order by date_format(billing.charged_datetime, "%m");

select billing.client_id as client, sum(billing.amount) as revenue from billing
where billing.client_id = "2"
group by billing.client_id;

select sites.domain_name as website, sites.client_id as client 

