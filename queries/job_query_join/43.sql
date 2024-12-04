SELECT min(t.title) AS typical_european_movie FROM company_type AS ct, info_type AS it, movie_companies AS mc, movie_info AS mi, title AS t WHERE ct.kind = 'production companies' AND mc.note LIKE '%(theatrical)%' AND mc.note LIKE '%(france)%' AND mi.info in ('sweden', 'norway', 'germany', 'denmark', 'swedish', 'denish', 'norwegian', 'german') AND t.production_year > 2005 AND t.id = mi.movie_id AND t.id = mc.movie_id AND mc.movie_id = mi.movie_id AND ct.id = mc.company_type_id AND it.id = mi.info_type_id