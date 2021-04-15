app_name=aws-tester-1.0.0.jar
process=$(ps -ef | grep ${app_name} | grep -v grep | awk {print $2})

if [ -n "${process}" ]; then
    return 0;
fi
return 1;