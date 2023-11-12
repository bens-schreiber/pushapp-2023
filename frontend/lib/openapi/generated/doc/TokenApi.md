# openapi.api.TokenApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tokenList**](TokenApi.md#tokenlist) | **GET** /token/ | 
[**tokenPartialUpdate**](TokenApi.md#tokenpartialupdate) | **PATCH** /token/ | 


# **tokenList**
> BuiltList<Token> tokenList()



Get all tokens of the current user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: Your App API - Swagger
//defaultApiClient.getAuthentication<OAuth>('Your App API - Swagger').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getTokenApi();

try {
    final response = api.tokenList();
    print(response);
} catch on DioError (e) {
    print('Exception when calling TokenApi->tokenList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Token&gt;**](Token.md)

### Authorization

[Your App API - Swagger](../README.md#Your App API - Swagger)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokenPartialUpdate**
> BuiltList<Token> tokenPartialUpdate()



Update the tokens value by 1, and select a new token holder

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: Your App API - Swagger
//defaultApiClient.getAuthentication<OAuth>('Your App API - Swagger').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getTokenApi();

try {
    final response = api.tokenPartialUpdate();
    print(response);
} catch on DioError (e) {
    print('Exception when calling TokenApi->tokenPartialUpdate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Token&gt;**](Token.md)

### Authorization

[Your App API - Swagger](../README.md#Your App API - Swagger)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

