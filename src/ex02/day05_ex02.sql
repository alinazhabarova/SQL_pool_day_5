CREATE INDEX idx_person_name ON person (name);

SET enable_seqscan = off;
EXPLAIN ANALYZE
select person.name as name_person
from person
where person.name = 'Anna';