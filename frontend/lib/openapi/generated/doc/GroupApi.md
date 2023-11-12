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
> groupCreate()



Create a group for the current user, put the user into the group, and create a token for the group

### Example
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

# **groupDelete**
> groupDelete()



Delete the group of the current user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();

try {
    api_instance.groupDelete();
} catch (e) {
    print('Exception when calling GroupApi->groupDelete: $e\n');
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

# **groupList**
> groupList()



Get the group of the current user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();

try {
    api_instance.groupList();
} catch (e) {
    print('Exception when calling GroupApi->groupList: $e\n');
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

# **groupUserCreate**
> UserxGroup groupUserCreate(data)



Add a user to the group of the current user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api_instance = GroupApi();
final data = UserxGroup(); // UserxGroup | 

try {
    final result = api_instance.groupUserCreate(data);
    print(result);
} catch (e) {
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

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

