//
//  screen 3.swift
//  Genius Pay
//
//  Created by Enaguthi Abhishek on 2/19/23.
//

import Foundation

profile kCGImagePropertyIPTCExtRatingValueLogoLink

kSecPolicyAppleiChat


// Ads

{
    "data": {
        "id": 542317095,
        "orgId": 40669820,
        "name": "campaign 1",
        "budgetAmount": {
            "amount": "2000",
            "currency": "USD"
        },
        "dailyBudgetAmount": {
            "amount": "300",
            "currency": "USD"
        },
        "adamId": 427916203,
        "paymentModel": "PAYG",
        "locInvoiceDetails": null,
        "budgetOrders": [],
        "displayStatus": "ON_HOLD",
        "adChannelType": "SEARCH",
        "supplySources": ["APPSTORE_SEARCH_RESULTS"],
        "billingEvent": "TAPS",
        "startTime": "2020-04-08T10:33:31.650",
        "endTime": "2020-04-09T10:33:31.650",
        "status": "ENABLED",
        "servingStatus": "NOT_RUNNING",
        "servingStateReasons": [
            "AD_GROUP_MISSING"
        ],
        "modificationTime": "2020-04-08T18:21:35.133",
        "deleted": false,
        "sapinLawResponse": "NOT_ANSWERED",
        "countriesOrRegions": [
            "AU",
            "US"
        ],
        "countryOrRegionServingStateReasons": {}
    },
    "pagination": null,
    "error": null
}


// QR CODE

import qrcode

# Set the data that you want to encode
data = ""

# Create a QR code object with the data and set the size and error correction level
qr = qrcode.QRCode(version=1, box_size=10, border=5)
qr.add_data(data)
qr.make(fit=True)

# Generate the QR code image and save it as a PNG file
img = qr.make_image(fill_color="black", back_color="white")
img.save("qrcode.png")

// Checkbook digital api

#import <Foundation/Foundation.h>

NSDictionary *headers = @{ @"accept": @"application/json",
                           @"content-type": @"application/json",
                           @"Authorization": @"37a622e8497793df005a04e0628b791a:d00a9e84cfecd567c315b56f853a2eb8" };
NSDictionary *parameters = @{ @"recipient": @"testing@checkbook.io",
                              @"name": @"Widgets Inc.",
                              @"amount": @5,
                              @"description": @"Test Payment" };

NSData *postData = [NSJSONSerialization dataWithJSONObject:parameters options:0 error:nil];

NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://www.checkbook.io/v3/check/digital"]
                                                       cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                   timeoutInterval:10.0];
[request setHTTPMethod:@"POST"];
[request setAllHTTPHeaderFields:headers];
[request setHTTPBody:postData];

NSURLSession *session = [NSURLSession sharedSession];
NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                            completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                if (error) {
                                                    NSLog(@"%@", error);
                                                } else {
                                                    NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
                                                    NSLog(@"%@", httpResponse);
                                                }
                                            }];
[dataTask resume];


struct iPad: Hashable {
    var serialNumber: String
    var capacity: Int
}

let first = iPad(serialNumber: "12345", capacity: 128)
let second = iPad(serialNumber: "abcde", capacity: 512)

var hasher = Hasher()
hasher.combine(first)
hasher.combine(second)
let hash = hasher.finalize()


// add bank accouutn
#import <Foundation/Foundation.h>

NSDictionary *headers = @{ @"accept": @"application/json",
                           @"content-type": @"application/json",
                           @"Authorization": @"37a622e8497793df005a04e0628b791a:d00a9e84cfecd567c315b56f853a2eb8" };
NSDictionary *parameters = @{ @"routing": @"021000021",
                              @"account": @"12340000",
                              @"type": @"CHECKING" };

NSData *postData = [NSJSONSerialization dataWithJSONObject:parameters options:0 error:nil];

NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://www.checkbook.io/v3/bank"]
                                                       cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                   timeoutInterval:10.0];
[request setHTTPMethod:@"POST"];
[request setAllHTTPHeaderFields:headers];
[request setHTTPBody:postData];

NSURLSession *session = [NSURLSession sharedSession];
NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                            completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                if (error) {
                                                    NSLog(@"%@", error);
                                                } else {
                                                    NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
                                                    NSLog(@"%@", httpResponse);
                                                }
                                            }];
[dataTask resume];

//Conformation

{
  "institutions": [
    {
        "id": "a34753da84194573807e72ae7dfc5dee",
        "login_form": [
            {
                "description": null,
                "name": "username",
                "type": "TEXT"
            },
            {
                "description": null,
                "name": "passcode",
                "type": "PASSWORD"
                
                
                
                ///endddddd
            }
        ],
        "name": "121 Financial Credit Union"
    }
  ]
}
