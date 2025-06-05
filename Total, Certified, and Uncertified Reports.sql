
with cte
as
(select
case
  when certified = '{True}' then True
  when certified = '{""}' or certified isnull then False
  end as certified from public.bi_folder)
  select count() as "Total Reports",
  COUNT() FILTER (WHERE certified is True) AS certified_true,
  COUNT(*) FILTER (WHERE certified is False) AS certified_false
  from cte;
