import os
import random
import subprocess


# if the executing path isn't ./frontend then exit
if os.getcwd().split('/')[-1] != 'frontend':
    print("Please run this script from the frontend directory")
    exit()

file_path = "./lib/swagger_generator.dart"

random_hash = ''.join(random.choices('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', k=32))
new_content = "// HASH: " + random_hash

file_content = []

with open(file_path, 'r') as file:
    file_content = file.readlines()

# Search for the line that begins with "// HASH: "
for i, line in enumerate(file_content):
    if line.startswith("// HASH: "):
        file_content[i] = new_content + '\n'
        break

with open(file_path, 'w') as file:
    file.writelines(file_content)

# Generate swagger command (https://pub.dev/packages/openapi_generator)
dart_command = "dart run build_runner build --delete-conflicting-outputs -v"
subprocess.run(dart_command, shell=True)


