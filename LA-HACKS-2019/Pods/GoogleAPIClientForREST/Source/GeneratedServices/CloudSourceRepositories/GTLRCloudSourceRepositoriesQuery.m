// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Source Repositories API (sourcerepo/v1)
// Description:
//   Accesses source code repositories hosted by Google.
// Documentation:
//   https://cloud.google.com/source-repositories/docs/apis

#import "GTLRCloudSourceRepositoriesQuery.h"

#import "GTLRCloudSourceRepositoriesObjects.h"

@implementation GTLRCloudSourceRepositoriesQuery

@dynamic fields;

@end

@implementation GTLRCloudSourceRepositoriesQuery_ProjectsGetConfig

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}/config";
  GTLRCloudSourceRepositoriesQuery_ProjectsGetConfig *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudSourceRepositories_ProjectConfig class];
  query.loggingName = @"sourcerepo.projects.getConfig";
  return query;
}

@end

@implementation GTLRCloudSourceRepositoriesQuery_ProjectsReposCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRCloudSourceRepositories_Repo *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/repos";
  GTLRCloudSourceRepositoriesQuery_ProjectsReposCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRCloudSourceRepositories_Repo class];
  query.loggingName = @"sourcerepo.projects.repos.create";
  return query;
}

@end

@implementation GTLRCloudSourceRepositoriesQuery_ProjectsReposDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRCloudSourceRepositoriesQuery_ProjectsReposDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudSourceRepositories_Empty class];
  query.loggingName = @"sourcerepo.projects.repos.delete";
  return query;
}

@end

@implementation GTLRCloudSourceRepositoriesQuery_ProjectsReposGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRCloudSourceRepositoriesQuery_ProjectsReposGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudSourceRepositories_Repo class];
  query.loggingName = @"sourcerepo.projects.repos.get";
  return query;
}

@end

@implementation GTLRCloudSourceRepositoriesQuery_ProjectsReposGetIamPolicy

@dynamic resource;

+ (instancetype)queryWithResource:(NSString *)resource {
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:getIamPolicy";
  GTLRCloudSourceRepositoriesQuery_ProjectsReposGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudSourceRepositories_Policy class];
  query.loggingName = @"sourcerepo.projects.repos.getIamPolicy";
  return query;
}

@end

@implementation GTLRCloudSourceRepositoriesQuery_ProjectsReposList

@dynamic name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}/repos";
  GTLRCloudSourceRepositoriesQuery_ProjectsReposList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRCloudSourceRepositories_ListReposResponse class];
  query.loggingName = @"sourcerepo.projects.repos.list";
  return query;
}

@end

@implementation GTLRCloudSourceRepositoriesQuery_ProjectsReposPatch

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudSourceRepositories_UpdateRepoRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRCloudSourceRepositoriesQuery_ProjectsReposPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudSourceRepositories_Repo class];
  query.loggingName = @"sourcerepo.projects.repos.patch";
  return query;
}

@end

@implementation GTLRCloudSourceRepositoriesQuery_ProjectsReposSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRCloudSourceRepositories_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:setIamPolicy";
  GTLRCloudSourceRepositoriesQuery_ProjectsReposSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudSourceRepositories_Policy class];
  query.loggingName = @"sourcerepo.projects.repos.setIamPolicy";
  return query;
}

@end

@implementation GTLRCloudSourceRepositoriesQuery_ProjectsReposTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRCloudSourceRepositories_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:testIamPermissions";
  GTLRCloudSourceRepositoriesQuery_ProjectsReposTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRCloudSourceRepositories_TestIamPermissionsResponse class];
  query.loggingName = @"sourcerepo.projects.repos.testIamPermissions";
  return query;
}

@end

@implementation GTLRCloudSourceRepositoriesQuery_ProjectsUpdateConfig

@dynamic name;

+ (instancetype)queryWithObject:(GTLRCloudSourceRepositories_UpdateProjectConfigRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}/config";
  GTLRCloudSourceRepositoriesQuery_ProjectsUpdateConfig *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRCloudSourceRepositories_ProjectConfig class];
  query.loggingName = @"sourcerepo.projects.updateConfig";
  return query;
}

@end
