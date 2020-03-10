./start-hadoop.sh
mr-jobhistory-daemon.sh start historyserver
mkdir vgsales
cd vgsales
wget https://raw.githubusercontent.com/Denyl97/hadoop-testing/master/vgsales.csv -O vgsales.csv
hadoop fs -mkdir -p vgsales/input
hadoop fs -mkdir -p vgsales/output
cd
hdfs dfs -put ./vgsales/* vgsales/input
hadoop fs -ls /user/root/vgsales
wget https://raw.githubusercontent.com/Denyl97/hadoop-testing/master/query/query1.pig -O query1.pig
wget https://raw.githubusercontent.com/Denyl97/hadoop-testing/master/query/query2.pig -O query2.pig
wget https://raw.githubusercontent.com/Denyl97/hadoop-testing/master/query/query3.pig -O query3.pig
wget https://raw.githubusercontent.com/Denyl97/hadoop-testing/master/query/query4.pig -O query4.pig