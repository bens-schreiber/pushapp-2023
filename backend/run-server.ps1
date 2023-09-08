rm swagger.json
python manage.py generate_swagger swagger.json
python manage.py makemigrations
python manage.py migrate
python manage.py runserver