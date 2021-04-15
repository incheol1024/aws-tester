app_name=aws-tester-1.0.0.jar
process=$(ps -ef | grep ${app_name} | grep -v grep | awk {print $2})

if [ -n "${process}" ]; then
    exit 0;
fi
exit 1;