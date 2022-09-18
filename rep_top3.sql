select data_doc as "Дата транзакції", 
       debacc as "Дебетовий рахунок", 
       amountuah as "Сума грн", txt as "Призначення платежу"
from payment
where txt like '%газ%'
and currency = 980
and data_doc >= to_date('2002','yyyy') and data_doc <= to_date('2015','yyyy') 
and status = '+'
order by amount
fetch first 3 rows only;
