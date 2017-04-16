# Tiny Networking

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## Features
- [x] Rest HTTP GET method
- [x] Request header serialization 
- [x] Response validation

## Requirements

- iOS 10.0
- Xcode 8.3

## Usage

### Making a Request
```swift
import TinyNetworking

UrlSessionRestClient().GET(url: url,
                           headers: headers,
                           completion: {(Data?, URLResponse?, Error?) in
						...
                })
        })
```

### Response Validation
Response validation done automatically to validate any HTTP error codes.

### Request Header Basic Authentication

```swift
import TinyNetworking

let requestHeaderSerializer = RequestHeaderSerializer()
requestHeaderSerializer.setAutherizationHeader(username: "username",
                                               password: "password")

UrlSessionRestClient().GET(url: url,
                           headers: requestHeaderSerializer.headers,
                           completion: {(Data?, URLResponse?, Error?) in
						...
                })
        })
```

### Cancel Ongoing Request

An ongoing request can be cancelled by canceling 'URLSessionDataTask' instance which is the return parameter of GET function.