//
//  WKWebView+NYWebCookie.m


#import "WKWebView+NYWebCookie.h"

@implementation WKWebView (NYWebCookie)
- (void)insertCookie:(NSHTTPCookie *)cookie
{
    @autoreleasepool {
        
        if (@available(iOS 11.0, *)) {
            WKHTTPCookieStore *cookieStore = self.configuration.websiteDataStore.httpCookieStore;
            [cookieStore setCookie:cookie completionHandler:nil];
            return;
        }
        
        NSMutableArray *TempCookies = [NSMutableArray array];
        NSMutableArray *localCookies =[NSKeyedUnarchiver unarchiveObjectWithData: [[NSUserDefaults standardUserDefaults] objectForKey: PAWKCookiesKey]];
        for (int i = 0; i < localCookies.count; i++) {
            NSHTTPCookie *TempCookie = [localCookies objectAtIndex:i];
            if ([cookie.name isEqualToString:TempCookie.name]) {
                [localCookies removeObject:TempCookie];
                i--;
                break;
            }
        }
        [TempCookies addObjectsFromArray:localCookies];
        [TempCookies addObject:cookie];
        NSData *cookiesData = [NSKeyedArchiver archivedDataWithRootObject: TempCookies];
        [[NSUserDefaults standardUserDefaults] setObject:cookiesData forKey:PAWKCookiesKey];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

@end
