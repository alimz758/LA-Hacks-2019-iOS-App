// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Groups Settings API (groupssettings/v1)
// Description:
//   Lets you manage permission levels and related settings of a group.
// Documentation:
//   https://developers.google.com/google-apps/groups-settings/get_started

#import "GTLRGroupsSettings.h"

// ----------------------------------------------------------------------------
// Authorization scope

NSString * const kGTLRAuthScopeGroupsSettingsAppsGroupsSettings = @"https://www.googleapis.com/auth/apps.groups.settings";

// ----------------------------------------------------------------------------
//   GTLRGroupsSettingsService
//

@implementation GTLRGroupsSettingsService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://www.googleapis.com/";
    self.servicePath = @"groups/v1/groups/";
    self.batchPath = @"batch/groupssettings/v1";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

+ (NSDictionary<NSString *, Class> *)kindStringToClassMap {
  return @{
    @"groupsSettings#groups" : [GTLRGroupsSettings_Groups class],
  };
}

@end