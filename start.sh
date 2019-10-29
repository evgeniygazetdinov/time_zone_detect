echo file="/app/db/"
if [ -z "$(ls -A /app/db/)" ]; then
   echo "base not exist copy new"
   python3 api.py -f
else
    echo "base exist"
    python api.py
fi
