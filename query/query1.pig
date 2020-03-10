vg = load '/user/root/vgsales/input/vgsales.csv' using PigStorage(',');
vg_final = foreach vg generate $1 as Name, $5 as Publisher;
grouped = group vg_final by Publisher;
final_result = foreach grouped generate group, COUNT(vg_final.Name) as f_count;
sort = order final_result by f_count desc;
final_count = limit sort 20;
dump final_count;
store final_count into 'vgsales/output/top20publishers';
