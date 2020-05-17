ACTION=$1
if [ "$ACTION" == "start" ]; then 
  echo "Starting Service"
  exit 0 
elif [ "$ACTION" == "stop" ]; then 
  echo "Stopping Service"
  exit 0 
else 
  echo "Invalid Input"
  exit 1
fi
