SELECT min(chn.name) AS voiced_char_name, min(n.name) AS voicing_actress_name, min(t.title) AS kung_fu_panda FROM aka_name AS an, char_name AS chn, cast_info AS ci, company_name AS cn, info_type AS it, keyword AS k, movie_companies AS mc, movie_info AS mi, movie_keyword AS mk, name AS n, role_type AS rt, title AS t WHERE ci.note in ('(voice)', '(voice: japanese version)', '(voice) (uncredited)', '(voice: english version)') AND cn.country_code ='[us]' AND cn.name = 'dreamworks animation' AND it.info = 'release dates' AND k.keyword in ('hero', 'martial-arts', 'hand-to-hand-combat', 'computer-animated-movie') AND mi.info is not null AND (mi.info LIKE 'japan:%201%' OR mi.info LIKE 'usa:%201%') AND n.gender ='f' AND n.name LIKE '%an%' AND rt.role ='actress' AND t.production_year > 2010 AND t.title LIKE 'kung fu panda%' AND t.id = mi.movie_id AND t.id = mc.movie_id AND t.id = ci.movie_id AND t.id = mk.movie_id AND mc.movie_id = ci.movie_id AND mc.movie_id = mi.movie_id AND mc.movie_id = mk.movie_id AND mi.movie_id = ci.movie_id AND mi.movie_id = mk.movie_id AND ci.movie_id = mk.movie_id AND cn.id = mc.company_id AND it.id = mi.info_type_id AND n.id = ci.person_id AND rt.id = ci.role_id AND n.id = an.person_id AND ci.person_id = an.person_id AND chn.id = ci.person_role_id AND k.id = mk.keyword_id