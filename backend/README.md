# PushApp 2023 Backend

To run the backend:

1. Set system environment vars
   * POSTGRES_USER = ...
   * POSTGRES_PASS = ...

2. (in a seperate terminal) Create the virtual environment
   * `cd backend`
   * `python -m venv ./env`
   * `source ./env/bin/activate` OR `.\env\Scripts\Activate.ps1`
   * `pip install -r requirements.txt`

2. Run the database
   * `docker-compose up`

3. Run the server
   * `python manage.py migrate`
   * `python manage.py runserver`

4. Make queries
   * To get a token, use https://developers.google.com/oauthplayground/
   * Click exchange authorization code for tokens
   * Copy the access token
   * In swagger, use the previous token in the /google route to get the app JWT token
   * Authorize by the swagger button and enter: Bearer your-access-token

## Running after initial setup

`./run-server.ps1`

## To run the swagger doc only

`rm swagger.json && python manage.py generate_swagger swagger.json`

## Notes

Interact with the API via the Swagger backend
