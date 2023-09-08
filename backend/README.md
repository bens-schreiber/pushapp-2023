# PushApp 2023 Backend

To run the backend:

1. Set system environment vars
   * MONGO_USER = ...
   * MONGO_PASS = ...

2. Start MongoDB and MongoExpress
   * `docker-compose up`
   * open <http://localhost:8081>
   * Input MONGO_USER and MONGO_PASS if prompted

3. (in a seperate terminal) Create the virtual environment
   * `cd backend`
   * `python -m venv ./env`
   * `source ./env/bin/activate` OR `.\env\Scripts\Activate.ps1`
   * `pip install -r requirements.txt`

4. Run the server
   * `python manage.py migrate`
   * `python manage.py runserver`

## Running after initial setup

`./run-server.ps1`

## To run the swagger doc only

`rm swagger.json && python manage.py generate_swagger swagger.json`

## Notes

Interact with the API via the Swagger backend
Use MongoExpress for editing the database directly
