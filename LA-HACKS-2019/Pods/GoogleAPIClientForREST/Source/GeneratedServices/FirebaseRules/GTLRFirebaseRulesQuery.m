// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Firebase Rules API (firebaserules/v1)
// Description:
//   Creates and manages rules that determine when a Firebase Rules-enabled
//   service should permit a request.
// Documentation:
//   https://firebase.google.com/docs/storage/security

#import "GTLRFirebaseRulesQuery.h"

#import "GTLRFirebaseRulesObjects.h"

// ----------------------------------------------------------------------------
// Constants

// executableVersion
NSString * const kGTLRFirebaseRulesExecutableVersionFirebaseRulesExecutableV1 = @"FIREBASE_RULES_EXECUTABLE_V1";
NSString * const kGTLRFirebaseRulesExecutableVersionFirebaseRulesExecutableV2 = @"FIREBASE_RULES_EXECUTABLE_V2";
NSString * const kGTLRFirebaseRulesExecutableVersionReleaseExecutableVersionUnspecified = @"RELEASE_EXECUTABLE_VERSION_UNSPECIFIED";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRFirebaseRulesQuery

@dynamic fields;

@end

@implementation GTLRFirebaseRulesQuery_ProjectsReleasesCreate

@dynamic name;

+ (instancetype)queryWithObject:(GTLRFirebaseRules_Release *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}/releases";
  GTLRFirebaseRulesQuery_ProjectsReleasesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRFirebaseRules_Release class];
  query.loggingName = @"firebaserules.projects.releases.create";
  return query;
}

@end

@implementation GTLRFirebaseRulesQuery_ProjectsReleasesDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRFirebaseRulesQuery_ProjectsReleasesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRFirebaseRules_Empty class];
  query.loggingName = @"firebaserules.projects.releases.delete";
  return query;
}

@end

@implementation GTLRFirebaseRulesQuery_ProjectsReleasesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRFirebaseRulesQuery_ProjectsReleasesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRFirebaseRules_Release class];
  query.loggingName = @"firebaserules.projects.releases.get";
  return query;
}

@end

@implementation GTLRFirebaseRulesQuery_ProjectsReleasesGetExecutable

@dynamic executableVersion, name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:getExecutable";
  GTLRFirebaseRulesQuery_ProjectsReleasesGetExecutable *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRFirebaseRules_GetReleaseExecutableResponse class];
  query.loggingName = @"firebaserules.projects.releases.getExecutable";
  return query;
}

@end

@implementation GTLRFirebaseRulesQuery_ProjectsReleasesList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}/releases";
  GTLRFirebaseRulesQuery_ProjectsReleasesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRFirebaseRules_ListReleasesResponse class];
  query.loggingName = @"firebaserules.projects.releases.list";
  return query;
}

@end

@implementation GTLRFirebaseRulesQuery_ProjectsReleasesPatch

@dynamic name;

+ (instancetype)queryWithObject:(GTLRFirebaseRules_UpdateReleaseRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRFirebaseRulesQuery_ProjectsReleasesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRFirebaseRules_Release class];
  query.loggingName = @"firebaserules.projects.releases.patch";
  return query;
}

@end

@implementation GTLRFirebaseRulesQuery_ProjectsRulesetsCreate

@dynamic name;

+ (instancetype)queryWithObject:(GTLRFirebaseRules_Ruleset *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}/rulesets";
  GTLRFirebaseRulesQuery_ProjectsRulesetsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRFirebaseRules_Ruleset class];
  query.loggingName = @"firebaserules.projects.rulesets.create";
  return query;
}

@end

@implementation GTLRFirebaseRulesQuery_ProjectsRulesetsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRFirebaseRulesQuery_ProjectsRulesetsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRFirebaseRules_Empty class];
  query.loggingName = @"firebaserules.projects.rulesets.delete";
  return query;
}

@end

@implementation GTLRFirebaseRulesQuery_ProjectsRulesetsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRFirebaseRulesQuery_ProjectsRulesetsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRFirebaseRules_Ruleset class];
  query.loggingName = @"firebaserules.projects.rulesets.get";
  return query;
}

@end

@implementation GTLRFirebaseRulesQuery_ProjectsRulesetsList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}/rulesets";
  GTLRFirebaseRulesQuery_ProjectsRulesetsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRFirebaseRules_ListRulesetsResponse class];
  query.loggingName = @"firebaserules.projects.rulesets.list";
  return query;
}

@end

@implementation GTLRFirebaseRulesQuery_ProjectsTest

@dynamic name;

+ (instancetype)queryWithObject:(GTLRFirebaseRules_TestRulesetRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:test";
  GTLRFirebaseRulesQuery_ProjectsTest *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRFirebaseRules_TestRulesetResponse class];
  query.loggingName = @"firebaserules.projects.test";
  return query;
}

@end
