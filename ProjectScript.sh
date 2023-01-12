hdfs dfs -mkdir /user/project
hdfs dfs -mkdir /user/project/input
hdfs dfs -mkdir /user/project/input/crashes
hdfs dfs -mkdir /user/project/input/violations

hive -e 'create table speed_camera_violations(address varchar(250),camera_id varchar(50),violation_date varchar(50), violations int,x_cord float,y_cord float,latitude float,longitude float) row format delimited;'


/usr/local/hbase/bin/hbase shell
create "traffic_crashes", "police_info", "conditions", "crash_info", "location", "injuries", "time"
