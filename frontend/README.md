# PushApp 2023 Frontend

Uses the Feature-First layout model:

- presentation: widgets
- application: services, riverpod 
- domain: object models
- data: data sources

To generate swagger:
- NOTE: VSCode sometimes screws this up. If you get an OS Error: No such file..., then close VSCode and run in terminal
* Run `python generate-swagger.py`