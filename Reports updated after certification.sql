
select * from public.bi_folder where certified = '{True}' and last_reviewed_date < last_updated_on_source;
