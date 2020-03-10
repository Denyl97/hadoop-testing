vg = load '/user/root/vgsales/input/vgsales.csv' using PigStorage(',');
vg_final = foreach vg generate $1 as Name, $4 as Genre, $5 as Publisher, $10 as Sales;
vg_filter = FILTER vg_final by Genre=='Shooter';
vg_group = GROUP vg_filter by (Publisher, Name);
vg_count = foreach vg_group	generate group, MAX(vg_filter.Sales) as f_count;
sort = order vg_count by f_count desc;
finalsort = limit sort 15;
dump finalsort;
-- store finalsort into 'vgsales/output/top15shooter';