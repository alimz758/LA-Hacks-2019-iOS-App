// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Stackdriver Debugger API (clouddebugger/v2)
// Description:
//   Examines the call stack and variables of a running application without
//   stopping or slowing it down.
// Documentation:
//   https://cloud.google.com/debugger

#import "GTLRCloudDebuggerQuery.h"

#import "GTLRCloudDebuggerObjects.h"

// ----------------------------------------------------------------------------
// Constants

// actionValue
NSString * const kGTLRCloudDebuggerActionValueCapture = @"CAPTURE";
NSString * const kGTLRCloudDebuggerActionValueLog     = @"LOG";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRCloudDebuggerQuery

@dynamic fields;

@end

@implementation GTLRCloudDebuggerQuery_ControllerDebuggeesBreakpointsList

@dynamic debuggeeId, successOnTimeout, waitToken;

+ (instancetype)queryWithDebuggeeId:(NSString *)debuggeeId {
  NSArray *pathParams = @[ @"debuggeeId" ];
  NSString *pathURITemplate = @"v2/controller/debuggees/{debuggeeId}/breakpoints";
  GTLRCloudDebuggerQuery_ControllerDebuggeesBreakpointsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.debuggeeId = debuggeeId;
  query.expectedObjectClass = [GTLRCloudDebugger_ListActiveBreakpointsResponse class];
  query.loggingName = @"clouddebugger.controller.debuggees.breakpoints.list";
  return query;
}

@end

@implementation GTLRCloudDebuggerQuery_ControllerDebuggeesBreakpointsUpdate

@dynamic debuggeeId, identifier;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"identifier" : @"id" };
}

+ (instancetype)queryWithObject:(GTLRCloudDebugger_UpdateActiveBreakpointRequest *)object
                     debuggeeId:(NSString *)debuggeeId
                     identifier:(NSString *)identifier {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[
    @"debuggeeId", @"id"
  ];
  NSString *pathURITemplate = @"v2/controller/debuggees/{debuggeeId}/breakpoints/{id}";
  GTLRCloudDebuggerQuery_ControllerDebuggeesBreakpointsUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.debuggeeId = debuggeeId;
  query.identifier = identifier;
  query.expectedObjectClass = [GTLRCloudDebugger_UpdateActiveBreakpointResponse class];
  query.loggingName = @"clouddebugger.controller.debuggees.breakpoints.update";
  return query;
}

@end

@implementation GTLRCloudDebuggerQuery_ControllerDebuggeesRegister

+ (instancetype)queryWithObject:(GTLRCloudDebugger_RegisterDebuggeeRequest *)object {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSString *pathURITemplate = @"v2/controller/debuggees/register";
  GTLRCloudDebuggerQuery_ControllerDebuggeesRegister *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:nil];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLRCloudDebugger_RegisterDebuggeeResponse class];
  query.loggingName = @"clouddebugger.controller.debuggees.register";
  return query;
}

@end

@implementation GTLRCloudDebuggerQuery_DebuggerDebuggeesBreakpointsDelete

@dynamic breakpointId, clientVersion, debuggeeId;

+ (instancetype)queryWithDebuggeeId:(NSString *)debuggeeId
                       breakpointId:(NSString *)breakpointId {
  NSArray *pathParams = @[
    @"breakpointId", @"debuggeeId"
  ];
  NSString *pathURITemplate = @"v2/debugger/debuggees/{debuggeeId}/breakpoints/{breakpointId}";
  GTLRCloudDebuggerQuery_DebuggerDebuggeesBreakpointsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.debuggeeId = debuggeeId;
  query.breakpointId = breakpointId;
  query.expectedObjectClass = [GTLRCloudDebugger_Empty class];
  query.loggingName = @"clouddebugger.debugger.debuggees.breakpoints.delete";
  return query;
}

@end

@implementation GTLRCloudDebuggerQuery_DebuggerDebuggeesBreakpointsGet

@dynamic breakpointId, clientVersion, debuggeeId;

+ (instancetype)queryWithDebuggeeId:(NSString *)debuggeeId
                       breakpointId:(NSString *)breakpointId {
  NSArray *pathParams = @[
    @"breakpointId", @"debuggeeId"
  ];
  NSString *pathURITemplate = @"v2/debugger/debuggees/{debuggeeId}/breakpoints/{breakpointId}";
  GTLRCloudDebuggerQuery_DebuggerDebuggeesBreakpointsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.debuggeeId = debuggeeId;
  query.breakpointId = breakpointId;
  query.expectedObjectClass = [GTLRCloudDebugger_GetBreakpointResponse class];
  query.loggingName = @"clouddebugger.debugger.debuggees.breakpoints.get";
  return query;
}

@end

@implementation GTLRCloudDebuggerQuery_DebuggerDebuggeesBreakpointsList

@dynamic actionValue, clientVersion, debuggeeId, includeAllUsers,
         includeInactive, stripResults, waitToken;

+ (NSDictionary<NSString *, NSString *> *)parameterNameMap {
  return @{ @"actionValue" : @"action.value" };
}

+ (instancetype)queryWithDebuggeeId:(NSString *)debuggeeId {
  NSArray *pathParams = @[ @"debuggeeId" ];
  NSString *pathURITemplate = @"v2/debugger/debuggees/{debuggeeId}/breakpoints";
  GTLRCloudDebuggerQuery_DebuggerDebuggeesBreakpointsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.debuggeeId = debuggeeId;
  query.expectedObjectClass = [GTLRCloudDebugger_ListBreakpointsResponse class];
  query.loggingName = @"clouddebugger.debugger.debuggees.breakpoints.list";
  return query;
}

@end

@implementation GTLRCloudDebuggerQuery_DebuggerDebuggeesBreakpointsSet

@dynamic clientVersion, debuggeeId;

+ (instancetype)queryWithObject:(GTLRCloudDebugger_Breakpoint *)object
                     debuggeeId:(NSString *)debuggeeId {
  if (object == nil) {
    GTLR_DEBUG_ASSERT(object != nil, @"Got a nil object");
    return nil;
  }
  NSArray *pathParams = @[ @"debuggeeId" ];
  NSString *pathURITemplate = @"v2/debugger/debuggees/{debuggeeId}/breakpoints/set";
  GTLRCloudDebuggerQuery_DebuggerDebuggeesBreakpointsSet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.debuggeeId = debuggeeId;
  query.expectedObjectClass = [GTLRCloudDebugger_SetBreakpointResponse class];
  query.loggingName = @"clouddebugger.debugger.debuggees.breakpoints.set";
  return query;
}

@end

@implementation GTLRCloudDebuggerQuery_DebuggerDebuggeesList

@dynamic clientVersion, includeInactive, project;

+ (instancetype)query {
  NSString *pathURITemplate = @"v2/debugger/debuggees";
  GTLRCloudDebuggerQuery_DebuggerDebuggeesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRCloudDebugger_ListDebuggeesResponse class];
  query.loggingName = @"clouddebugger.debugger.debuggees.list";
  return query;
}

@end
