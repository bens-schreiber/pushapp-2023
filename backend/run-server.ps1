# Remove swagger.json if it exists
if (Test-Path "swagger.json") {
    Remove-Item "swagger.json"
}

# Generate Swagger
python manage.py generate_swagger swagger.json

# Continue with the rest of the commands
python manage.py makemigrations
python manage.py migrate
python manage.py runserver
