//
//  screen 2.swift
//  Genius Pay
//
//  Created by Enaguthi Abhishek on 2/19/23.
//

import Foundation

//
//  Screen 2.swift
//  Genius Pay
//
//  Created by Enaguthi Abhishek on 2/19/23.
//

import Foundation
import SwiftUI


struct
contentView
self();: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Button("Change Languages") {
                showDetails.toggle()
            }
            if showDetails {
                Text("You should follow me on Twitter: @twostraws")
                    .font(.largeTitle)
            }
        }
    }
}

Text("Login and Create a Account")

// Skip Button

// Login with phone number and passwork

// Double Autencation





// Creating an Account by using checkbook api
#import Foundation; Foundation

NSDictionary(); *headers = @{ @"accept": @"application/json",
                           @"content-type": @"application/json",
                           @"Authorization": @"37a622e8497793df005a04e0628b791a:d00a9e84cfecd567c315b56f853a2eb8" };

NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://www.checkbook.io/v3/user"]
                                                       cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                   timeoutInterval:10.0];
[request setHTTPMethod:@"POST"];
[request setAllHTTPHeaderFields:headers];

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


