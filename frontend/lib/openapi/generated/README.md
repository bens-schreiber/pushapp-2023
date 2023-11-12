# openapi
No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  openapi:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  openapi:
    path: /path/to/openapi
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/api.dart';

// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();

try {
    api_instance.groupCreate();
} catch (e) {
    print('Exception when calling GroupApi->groupCreate: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*GroupApi* | [**groupCreate**](doc//GroupApi.md#groupcreate) | **POST** /group/ | 
*GroupApi* | [**groupDelete**](doc//GroupApi.md#groupdelete) | **DELETE** /group/ | 
*GroupApi* | [**groupList**](doc//GroupApi.md#grouplist) | **GET** /group/ | 
*GroupApi* | [**groupUserCreate**](doc//GroupApi.md#groupusercreate) | **POST** /group/user/ | 
*TokenApi* | [**tokenList**](doc//TokenApi.md#tokenlist) | **GET** /token/ | 
*TokenApi* | [**tokenPartialUpdate**](doc//TokenApi.md#tokenpartialupdate) | **PATCH** /token/ | 


## Documentation For Models

 - [Token](doc//Token.md)
 - [UserxGroup](doc//UserxGroup.md)


## Documentation For Authorization


Authentication schemes defined for the API:
### Basic

- **Type**: HTTP Basic authentication


## Author


