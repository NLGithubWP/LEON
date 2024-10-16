select min(chn.name) as character, min(t.title) as russian_mov_with_actor_producer from char_name as chn, cast_info as ci, company_name as cn, company_type as ct, movie_companies as mc, role_type as rt, title as t where ci.note like '%(producer)%' and cn.country_code = '[ru]' and rt.role = 'actor' and t.production_year > 2010 and t.id = mc.movie_id and t.id = ci.movie_id and ci.movie_id = mc.movie_id and chn.id = ci.person_role_id and rt.id = ci.role_id and cn.id = mc.company_id and ct.id = mc.company_type_id