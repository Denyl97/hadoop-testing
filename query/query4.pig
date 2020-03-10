vg = load '/user/root/vgsales/input/vgsales.csv' using PigStorage(',');
vg_final = foreach vg generate $5 as Publisher, $10 as GlobalSales;
grouped = group vg_final by Publisher;
final_result = foreach grouped generate group, SUM(vg_final.GlobalSales) as f_count;
sort = order final_result by f_count desc;
final_count = limit sort 10;
dump final_count;
-- store final_count into 'vgsales/output/top10sales';