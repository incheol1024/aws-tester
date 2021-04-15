export app_path=/app/aws-tester/
if [ -e $app_path ]; then
  cd $app_path
  echo "============app_path exist============"
  ls -al
  echo "===========delete app_paths==========="
  rm -rf /app/aws-tester/*
else
  echo "Not exist app_paths"
fi

exit 0



