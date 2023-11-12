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
> tokenList()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = TokenApi();

try {
    api_instance.tokenList();
} catch (e) {
    print('Exception when calling TokenApi->tokenList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokenPartialUpdate**
> Token tokenPartialUpdate(data)



Update the tokens value by 1, and select a new token holder

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = TokenApi();
final data = Token(); // Token | 

try {
    final result = api_instance.tokenPartialUpdate(data);
    print(result);
} catch (e) {
    print('Exception when calling TokenApi->tokenPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Token**](Token.md)|  | 

### Return type

[**Token**](Token.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

