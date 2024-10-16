select min(lt.link) as link_type, min(t1.title) as first_movie, min(t2.title) as second_movie from keyword as k, link_type as lt, movie_keyword as mk, movie_link as ml, title as t1, title as t2 where k.keyword ='character-name-in-title' and mk.keyword_id = k.id and t1.id = mk.movie_id and ml.movie_id = t1.id and ml.linked_movie_id = t2.id and lt.id = ml.link_type_id and mk.movie_id = t1.id