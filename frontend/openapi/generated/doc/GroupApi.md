# openapi.api.GroupApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**groupCreate**](GroupApi.md#groupcreate) | **POST** /group/ | 
[**groupDelete**](GroupApi.md#groupdelete) | **DELETE** /group/ | 
[**groupList**](GroupApi.md#grouplist) | **GET** /group/ | 
[**groupUserCreate**](GroupApi.md#groupusercreate) | **POST** /group/user/ | 


# **groupCreate**
> Group groupCreate()



Create a group for the current user, put the user into the group, and create a token for the group

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupApi();

try {
    final response = api.groupCreate();
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupApi->groupCreate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Group**](Group.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupDelete**
> groupDelete()



Delete the group of the current user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupApi();

try {
    api.groupDelete();
} catch on DioError (e) {
    print('Exception when calling GroupApi->groupDelete: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupList**
> BuiltList<Group> groupList()



Get the group of the current user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupApi();

try {
    final response = api.groupList();
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupApi->groupList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Group&gt;**](Group.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupUserCreate**
> UserxGroup groupUserCreate(data)



Add a user to the group of the current user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = Openapi().getGroupApi();
final UserxGroup data = ; // UserxGroup | 

try {
    final response = api.groupUserCreate(data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GroupApi->groupUserCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**UserxGroup**](UserxGroup.md)|  | 

### Return type

[**UserxGroup**](UserxGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

