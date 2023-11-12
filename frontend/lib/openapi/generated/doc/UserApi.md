# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userList**](UserApi.md#userlist) | **GET** /user/ | 


# **userList**
> User userList()



Get the current user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure OAuth2 access token for authorization: Your App API - Swagger
//defaultApiClient.getAuthentication<OAuth>('Your App API - Swagger').accessToken = 'YOUR_ACCESS_TOKEN';

final api = Openapi().getUserApi();

try {
    final response = api.userList();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->userList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[Your App API - Swagger](../README.md#Your App API - Swagger)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

