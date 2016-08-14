#import <substrate.h>

extern "C" BOOL MGGetBoolAnswer(CFStringRef);
%hookf(BOOL, MGGetBoolAnswer, CFStringRef key)
{
	if (CFStringCompare(key, CFSTR("s+gaKNe68Gs3PfqKrZhi1w"), kCFCompareCaseInsensitive) == kCFCompareEqualTo)
		return NO;
	return %orig;
}

%ctor
{
	dlopen("/System/Library/Frameworks/SafariServices.framework/SafariServices", RTLD_LAZY);
	dlopen("/System/Library/PreferenceBundles/MobileSafariSettings.bundle/MobileSafariSettings", RTLD_LAZY);
	%init;
}