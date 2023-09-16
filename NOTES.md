# NOTES

## SQL NOTES

* Current assessments
```
select a.assessee_id, a.assessed_on, a.assessment_level_id, al.level
from assessment_levels al, assessments a
inner join (
  select assessee_id, max(assessed_on) as maxdate
  from assessments
  group by assessee_id
) b on a.assessee_id = b.assessee_id and a.assessed_on = b.maxdate
where a.assessment_level_id = al.id;
```

* Assessments in date range
```
select a.assessee_id, a.assessed_on, a.assessment_level_id, al.level
from assessment_levels al, assessments a
inner join (
  select assessee_id, max(assessed_on) as maxdate
  from assessments
  where assessed_on >= '2023-01-01' and assessed_on <= '2023-12-31'
  group by assessee_id
) b on a.assessee_id = b.assessee_id and a.assessed_on = b.maxdate
where a.assessment_level_id = al.id;
```
