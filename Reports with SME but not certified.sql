
select count(*)  from public.bi_folder where subject_matter_expert is not null and certified <> '{True}';
