file=/app/aws-tester/
if [ -e $file ]; then
  cd $file
  echo "============file exist============"
  ls -al
  echo "===========delete files==========="
  rm -rf /app/aws-tester/*
else
  echo "Not exist files"
fi

exit 0



