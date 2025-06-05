
SELECT full_path
      ,name as "Workbook Name"
      ,owner as "Workbook Owner"
      ,subject_matter_expert as "SME"
      ,description as "Description"
      ,description_at_source as "Source Description"
      ,num_report_accesses as "# of times accessed"
      ,popularity as "Popularity"
      ,certified as "Certification Status"
      ,priority_ranking as "Priority Ranking"
  FROM public.bi_folder
WHERE deleted='false'
   AND (certified = '{""}' or certified isnull)
