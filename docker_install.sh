virtualenv --python=/usr/local/bin/python3.10 python
source python/bin/activate

pip install -r requirements.txt -t python/lib/python3.10/site-packages

zip -r9 python.zip python