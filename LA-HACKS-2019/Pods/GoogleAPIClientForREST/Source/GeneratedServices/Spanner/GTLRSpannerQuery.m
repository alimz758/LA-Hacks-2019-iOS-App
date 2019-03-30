// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Spanner API (spanner/v1)
// Description:
//   Cloud Spanner is a managed, mission-critical, globally consistent and
//   scalable relational database service.
// Documentation:
//   https://cloud.google.com/spanner/

#import "GTLRSpannerQuery.h"

#import "GTLRSpannerObjects.h"

@implementation GTLRSpannerQuery

@dynamic fields;

@end

@implementation GTLRSpannerQuery_ProjectsInstanceConfigsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRSpannerQuery_ProjectsInstanceConfigsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRSpanner_InstanceConfig class];
  query.loggingName = @"spanner.projects.instanceConfigs.get";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstanceConfigsList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/instanceConfigs";
  GTLRSpannerQuery_ProjectsInstanceConfigsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRSpanner_ListInstanceConfigsResponse class];
  query.loggingName = @"spanner.projects.instanceConfigs.list";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRSpanner_CreateInstanceRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/instances";
  GTLRSpannerQuery_ProjectsInstancesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRSpanner_Operation class];
  query.loggingName = @"spanner.projects.instances.create";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRSpanner_CreateDatabaseRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/databases";
  GTLRSpannerQuery_ProjectsInstancesDatabasesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRSpanner_Operation class];
  query.loggingName = @"spanner.projects.instances.databases.create";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesDropDatabase

@dynamic database;

+ (instancetype)queryWithDatabase:(NSString *)database {
  NSArray *pathParams = @[ @"database" ];
  NSString *pathURITemplate = @"v1/{+database}";
  GTLRSpannerQuery_ProjectsInstancesDatabasesDropDatabase *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.database = database;
  query.expectedObjectClass = [GTLRSpanner_Empty class];
  query.loggingName = @"spanner.projects.instances.databases.dropDatabase";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRSpannerQuery_ProjectsInstancesDatabasesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRSpanner_Database class];
  query.loggingName = @"spanner.projects.instances.databases.get";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesGetDdl

@dynamic database;

+ (instancetype)queryWithDatabase:(NSString *)database {
  NSArray *pathParams = @[ @"database" ];
  NSString *pathURITemplate = @"v1/{+database}/ddl";
  GTLRSpannerQuery_ProjectsInstancesDatabasesGetDdl *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.database = database;
  query.expectedObjectClass = [GTLRSpanner_GetDatabaseDdlResponse class];
  query.loggingName = @"spanner.projects.instances.databases.getDdl";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesGetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRSpanner_GetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:getIamPolicy";
  GTLRSpannerQuery_ProjectsInstancesDatabasesGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRSpanner_Policy class];
  query.loggingName = @"spanner.projects.instances.databases.getIamPolicy";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/databases";
  GTLRSpannerQuery_ProjectsInstancesDatabasesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRSpanner_ListDatabasesResponse class];
  query.loggingName = @"spanner.projects.instances.databases.list";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesOperationsCancel

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:cancel";
  GTLRSpannerQuery_ProjectsInstancesDatabasesOperationsCancel *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRSpanner_Empty class];
  query.loggingName = @"spanner.projects.instances.databases.operations.cancel";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesOperationsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRSpannerQuery_ProjectsInstancesDatabasesOperationsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRSpanner_Empty class];
  query.loggingName = @"spanner.projects.instances.databases.operations.delete";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesOperationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRSpannerQuery_ProjectsInstancesDatabasesOperationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRSpanner_Operation class];
  query.loggingName = @"spanner.projects.instances.databases.operations.get";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesOperationsList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRSpannerQuery_ProjectsInstancesDatabasesOperationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRSpanner_ListOperationsResponse class];
  query.loggingName = @"spanner.projects.instances.databases.operations.list";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsBeginTransaction

@dynamic session;

+ (instancetype)queryWithObject:(GTLRSpanner_BeginTransactionRequest *)object
                        session:(NSString *)session {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"session" ];
  NSString *pathURITemplate = @"v1/{+session}:beginTransaction";
  GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsBeginTransaction *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.session = session;
  query.expectedObjectClass = [GTLRSpanner_Transaction class];
  query.loggingName = @"spanner.projects.instances.databases.sessions.beginTransaction";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsCommit

@dynamic session;

+ (instancetype)queryWithObject:(GTLRSpanner_CommitRequest *)object
                        session:(NSString *)session {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"session" ];
  NSString *pathURITemplate = @"v1/{+session}:commit";
  GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsCommit *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.session = session;
  query.expectedObjectClass = [GTLRSpanner_CommitResponse class];
  query.loggingName = @"spanner.projects.instances.databases.sessions.commit";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsCreate

@dynamic database;

+ (instancetype)queryWithObject:(GTLRSpanner_CreateSessionRequest *)object
                       database:(NSString *)database {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"database" ];
  NSString *pathURITemplate = @"v1/{+database}/sessions";
  GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.database = database;
  query.expectedObjectClass = [GTLRSpanner_Session class];
  query.loggingName = @"spanner.projects.instances.databases.sessions.create";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRSpanner_Empty class];
  query.loggingName = @"spanner.projects.instances.databases.sessions.delete";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsExecuteSql

@dynamic session;

+ (instancetype)queryWithObject:(GTLRSpanner_ExecuteSqlRequest *)object
                        session:(NSString *)session {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"session" ];
  NSString *pathURITemplate = @"v1/{+session}:executeSql";
  GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsExecuteSql *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.session = session;
  query.expectedObjectClass = [GTLRSpanner_ResultSet class];
  query.loggingName = @"spanner.projects.instances.databases.sessions.executeSql";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsExecuteStreamingSql

@dynamic session;

+ (instancetype)queryWithObject:(GTLRSpanner_ExecuteSqlRequest *)object
                        session:(NSString *)session {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"session" ];
  NSString *pathURITemplate = @"v1/{+session}:executeStreamingSql";
  GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsExecuteStreamingSql *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.session = session;
  query.expectedObjectClass = [GTLRSpanner_PartialResultSet class];
  query.loggingName = @"spanner.projects.instances.databases.sessions.executeStreamingSql";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRSpanner_Session class];
  query.loggingName = @"spanner.projects.instances.databases.sessions.get";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsList

@dynamic database, filter, pageSize, pageToken;

+ (instancetype)queryWithDatabase:(NSString *)database {
  NSArray *pathParams = @[ @"database" ];
  NSString *pathURITemplate = @"v1/{+database}/sessions";
  GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.database = database;
  query.expectedObjectClass = [GTLRSpanner_ListSessionsResponse class];
  query.loggingName = @"spanner.projects.instances.databases.sessions.list";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsPartitionQuery

@dynamic session;

+ (instancetype)queryWithObject:(GTLRSpanner_PartitionQueryRequest *)object
                        session:(NSString *)session {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"session" ];
  NSString *pathURITemplate = @"v1/{+session}:partitionQuery";
  GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsPartitionQuery *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.session = session;
  query.expectedObjectClass = [GTLRSpanner_PartitionResponse class];
  query.loggingName = @"spanner.projects.instances.databases.sessions.partitionQuery";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsPartitionRead

@dynamic session;

+ (instancetype)queryWithObject:(GTLRSpanner_PartitionReadRequest *)object
                        session:(NSString *)session {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"session" ];
  NSString *pathURITemplate = @"v1/{+session}:partitionRead";
  GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsPartitionRead *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.session = session;
  query.expectedObjectClass = [GTLRSpanner_PartitionResponse class];
  query.loggingName = @"spanner.projects.instances.databases.sessions.partitionRead";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsRead

@dynamic session;

+ (instancetype)queryWithObject:(GTLRSpanner_ReadRequest *)object
                        session:(NSString *)session {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"session" ];
  NSString *pathURITemplate = @"v1/{+session}:read";
  GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsRead *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.session = session;
  query.expectedObjectClass = [GTLRSpanner_ResultSet class];
  query.loggingName = @"spanner.projects.instances.databases.sessions.read";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsRollback

@dynamic session;

+ (instancetype)queryWithObject:(GTLRSpanner_RollbackRequest *)object
                        session:(NSString *)session {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"session" ];
  NSString *pathURITemplate = @"v1/{+session}:rollback";
  GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsRollback *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.session = session;
  query.expectedObjectClass = [GTLRSpanner_Empty class];
  query.loggingName = @"spanner.projects.instances.databases.sessions.rollback";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsStreamingRead

@dynamic session;

+ (instancetype)queryWithObject:(GTLRSpanner_ReadRequest *)object
                        session:(NSString *)session {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"session" ];
  NSString *pathURITemplate = @"v1/{+session}:streamingRead";
  GTLRSpannerQuery_ProjectsInstancesDatabasesSessionsStreamingRead *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.session = session;
  query.expectedObjectClass = [GTLRSpanner_PartialResultSet class];
  query.loggingName = @"spanner.projects.instances.databases.sessions.streamingRead";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRSpanner_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:setIamPolicy";
  GTLRSpannerQuery_ProjectsInstancesDatabasesSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRSpanner_Policy class];
  query.loggingName = @"spanner.projects.instances.databases.setIamPolicy";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRSpanner_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:testIamPermissions";
  GTLRSpannerQuery_ProjectsInstancesDatabasesTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRSpanner_TestIamPermissionsResponse class];
  query.loggingName = @"spanner.projects.instances.databases.testIamPermissions";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDatabasesUpdateDdl

@dynamic database;

+ (instancetype)queryWithObject:(GTLRSpanner_UpdateDatabaseDdlRequest *)object
                       database:(NSString *)database {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"database" ];
  NSString *pathURITemplate = @"v1/{+database}/ddl";
  GTLRSpannerQuery_ProjectsInstancesDatabasesUpdateDdl *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.database = database;
  query.expectedObjectClass = [GTLRSpanner_Operation class];
  query.loggingName = @"spanner.projects.instances.databases.updateDdl";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRSpannerQuery_ProjectsInstancesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRSpanner_Empty class];
  query.loggingName = @"spanner.projects.instances.delete";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRSpannerQuery_ProjectsInstancesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRSpanner_Instance class];
  query.loggingName = @"spanner.projects.instances.get";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesGetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRSpanner_GetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:getIamPolicy";
  GTLRSpannerQuery_ProjectsInstancesGetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRSpanner_Policy class];
  query.loggingName = @"spanner.projects.instances.getIamPolicy";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesList

@dynamic filter, pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/instances";
  GTLRSpannerQuery_ProjectsInstancesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRSpanner_ListInstancesResponse class];
  query.loggingName = @"spanner.projects.instances.list";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesOperationsCancel

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:cancel";
  GTLRSpannerQuery_ProjectsInstancesOperationsCancel *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRSpanner_Empty class];
  query.loggingName = @"spanner.projects.instances.operations.cancel";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesOperationsDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRSpannerQuery_ProjectsInstancesOperationsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRSpanner_Empty class];
  query.loggingName = @"spanner.projects.instances.operations.delete";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesOperationsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRSpannerQuery_ProjectsInstancesOperationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRSpanner_Operation class];
  query.loggingName = @"spanner.projects.instances.operations.get";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesOperationsList

@dynamic filter, name, pageSize, pageToken;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRSpannerQuery_ProjectsInstancesOperationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRSpanner_ListOperationsResponse class];
  query.loggingName = @"spanner.projects.instances.operations.list";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesPatch

@dynamic name;

+ (instancetype)queryWithObject:(GTLRSpanner_UpdateInstanceRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRSpannerQuery_ProjectsInstancesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRSpanner_Operation class];
  query.loggingName = @"spanner.projects.instances.patch";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesSetIamPolicy

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRSpanner_SetIamPolicyRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:setIamPolicy";
  GTLRSpannerQuery_ProjectsInstancesSetIamPolicy *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRSpanner_Policy class];
  query.loggingName = @"spanner.projects.instances.setIamPolicy";
  return query;
}

@end

@implementation GTLRSpannerQuery_ProjectsInstancesTestIamPermissions

@dynamic resource;

+ (instancetype)queryWithObject:(GTLRSpanner_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"resource" ];
  NSString *pathURITemplate = @"v1/{+resource}:testIamPermissions";
  GTLRSpannerQuery_ProjectsInstancesTestIamPermissions *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.resource = resource;
  query.expectedObjectClass = [GTLRSpanner_TestIamPermissionsResponse class];
  query.loggingName = @"spanner.projects.instances.testIamPermissions";
  return query;
}

@end
