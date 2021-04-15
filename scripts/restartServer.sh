app_path=/app/aws-tester
#app_path=/app/excercise-be
app_name=aws-tester-1.0.0.jar
#app_name=exercise-be-0.0.1-SNAPSHOT.jar

cd $app_path

#check original process app
pid=$(ps -ef | grep ${app_name} | grep -v grep | awk '{print $2}')

if [ -n "${pid}" ]; then
  echo "===kill application===";
  kill -9 "${pid}"
else
  echo "===no application kill==="
fi

java -jar $app_path/target/"$app_name" > /dev/null 2>&1 &
