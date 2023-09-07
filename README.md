# PushApp 2023

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
   * `source ./env/bin/activate` OR `env\Scripts\Activate.ps1`

4. Run the server
   * `python manage.py runserver`

Interact with the API via the Swagger backend
Use MongoExpress for editing the database directly
