select
 case
  when credit_score < 600 then 'Poor'
  when credit_score >=600 and credit_score <650 then 'Fair'
  when credit_score >=650 and credit_score <700 then 'Good'
  when credit_score >=700 then 'Great'
  else 'Unknown'
 end as Credit_band
from loans;