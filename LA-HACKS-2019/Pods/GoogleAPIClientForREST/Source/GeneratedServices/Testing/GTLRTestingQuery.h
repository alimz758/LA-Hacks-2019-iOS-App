// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Testing API (testing/v1)
// Description:
//   Allows developers to run automated tests for their mobile applications on
//   Google infrastructure.
// Documentation:
//   https://developers.google.com/cloud-test-lab/

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRQuery.h"
#else
  #import "GTLRQuery.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRTesting_FileReference;
@class GTLRTesting_TestMatrix;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the query classes' properties below.

// ----------------------------------------------------------------------------
// environmentType

/** Value: "ANDROID" */
GTLR_EXTERN NSString * const kGTLRTestingEnvironmentTypeAndroid;
/** Value: "ENVIRONMENT_TYPE_UNSPECIFIED" */
GTLR_EXTERN NSString * const kGTLRTestingEnvironmentTypeEnvironmentTypeUnspecified;
/** Value: "IOS" */
GTLR_EXTERN NSString * const kGTLRTestingEnvironmentTypeIos;
/** Value: "NETWORK_CONFIGURATION" */
GTLR_EXTERN NSString * const kGTLRTestingEnvironmentTypeNetworkConfiguration;
/** Value: "PROVIDED_SOFTWARE" */
GTLR_EXTERN NSString * const kGTLRTestingEnvironmentTypeProvidedSoftware;

// ----------------------------------------------------------------------------
// Query Classes
//

/**
 *  Parent class for other Testing query classes.
 */
@interface GTLRTestingQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Gets the details of an Android application APK.
 *
 *  Method: testing.applicationDetailService.getApkDetails
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTestingCloudPlatform
 */
@interface GTLRTestingQuery_ApplicationDetailServiceGetApkDetails : GTLRTestingQuery
// Previous library name was
//   +[GTLQueryTesting queryForApplicationDetailServiceGetApkDetailsWithObject:]

/**
 *  Fetches a @c GTLRTesting_GetApkDetailsResponse.
 *
 *  Gets the details of an Android application APK.
 *
 *  @param object The @c GTLRTesting_FileReference to include in the query.
 *
 *  @return GTLRTestingQuery_ApplicationDetailServiceGetApkDetails
 */
+ (instancetype)queryWithObject:(GTLRTesting_FileReference *)object;

@end

/**
 *  Cancels unfinished test executions in a test matrix.
 *  This call returns immediately and cancellation proceeds asychronously.
 *  If the matrix is already final, this operation will have no effect.
 *  May return any of the following canonical error codes:
 *  - PERMISSION_DENIED - if the user is not authorized to read project
 *  - INVALID_ARGUMENT - if the request is malformed
 *  - NOT_FOUND - if the Test Matrix does not exist
 *
 *  Method: testing.projects.testMatrices.cancel
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTestingCloudPlatform
 */
@interface GTLRTestingQuery_ProjectsTestMatricesCancel : GTLRTestingQuery
// Previous library name was
//   +[GTLQueryTesting queryForProjectsTestMatricesCancelWithprojectId:testMatrixId:]

/** Cloud project that owns the test. */
@property(nonatomic, copy, nullable) NSString *projectId;

/** Test matrix that will be canceled. */
@property(nonatomic, copy, nullable) NSString *testMatrixId;

/**
 *  Fetches a @c GTLRTesting_CancelTestMatrixResponse.
 *
 *  Cancels unfinished test executions in a test matrix.
 *  This call returns immediately and cancellation proceeds asychronously.
 *  If the matrix is already final, this operation will have no effect.
 *  May return any of the following canonical error codes:
 *  - PERMISSION_DENIED - if the user is not authorized to read project
 *  - INVALID_ARGUMENT - if the request is malformed
 *  - NOT_FOUND - if the Test Matrix does not exist
 *
 *  @param projectId Cloud project that owns the test.
 *  @param testMatrixId Test matrix that will be canceled.
 *
 *  @return GTLRTestingQuery_ProjectsTestMatricesCancel
 */
+ (instancetype)queryWithProjectId:(NSString *)projectId
                      testMatrixId:(NSString *)testMatrixId;

@end

/**
 *  Creates and runs a matrix of tests according to the given specifications.
 *  Unsupported environments will be returned in the state UNSUPPORTED.
 *  Matrices are limited to at most 200 supported executions.
 *  May return any of the following canonical error codes:
 *  - PERMISSION_DENIED - if the user is not authorized to write to project
 *  - INVALID_ARGUMENT - if the request is malformed or if the matrix expands
 *  to more than 200 supported executions
 *
 *  Method: testing.projects.testMatrices.create
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTestingCloudPlatform
 */
@interface GTLRTestingQuery_ProjectsTestMatricesCreate : GTLRTestingQuery
// Previous library name was
//   +[GTLQueryTesting queryForProjectsTestMatricesCreateWithObject:projectId:]

/** The GCE project under which this job will run. */
@property(nonatomic, copy, nullable) NSString *projectId;

/**
 *  A string id used to detect duplicated requests.
 *  Ids are automatically scoped to a project, so
 *  users should ensure the ID is unique per-project.
 *  A UUID is recommended.
 *  Optional, but strongly recommended.
 */
@property(nonatomic, copy, nullable) NSString *requestId;

/**
 *  Fetches a @c GTLRTesting_TestMatrix.
 *
 *  Creates and runs a matrix of tests according to the given specifications.
 *  Unsupported environments will be returned in the state UNSUPPORTED.
 *  Matrices are limited to at most 200 supported executions.
 *  May return any of the following canonical error codes:
 *  - PERMISSION_DENIED - if the user is not authorized to write to project
 *  - INVALID_ARGUMENT - if the request is malformed or if the matrix expands
 *  to more than 200 supported executions
 *
 *  @param object The @c GTLRTesting_TestMatrix to include in the query.
 *  @param projectId The GCE project under which this job will run.
 *
 *  @return GTLRTestingQuery_ProjectsTestMatricesCreate
 */
+ (instancetype)queryWithObject:(GTLRTesting_TestMatrix *)object
                      projectId:(NSString *)projectId;

@end

/**
 *  Checks the status of a test matrix.
 *  May return any of the following canonical error codes:
 *  - PERMISSION_DENIED - if the user is not authorized to read project
 *  - INVALID_ARGUMENT - if the request is malformed
 *  - NOT_FOUND - if the Test Matrix does not exist
 *
 *  Method: testing.projects.testMatrices.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTestingCloudPlatform
 *    @c kGTLRAuthScopeTestingCloudPlatformReadOnly
 */
@interface GTLRTestingQuery_ProjectsTestMatricesGet : GTLRTestingQuery
// Previous library name was
//   +[GTLQueryTesting queryForProjectsTestMatricesGetWithprojectId:testMatrixId:]

/** Cloud project that owns the test matrix. */
@property(nonatomic, copy, nullable) NSString *projectId;

/** Unique test matrix id which was assigned by the service. */
@property(nonatomic, copy, nullable) NSString *testMatrixId;

/**
 *  Fetches a @c GTLRTesting_TestMatrix.
 *
 *  Checks the status of a test matrix.
 *  May return any of the following canonical error codes:
 *  - PERMISSION_DENIED - if the user is not authorized to read project
 *  - INVALID_ARGUMENT - if the request is malformed
 *  - NOT_FOUND - if the Test Matrix does not exist
 *
 *  @param projectId Cloud project that owns the test matrix.
 *  @param testMatrixId Unique test matrix id which was assigned by the service.
 *
 *  @return GTLRTestingQuery_ProjectsTestMatricesGet
 */
+ (instancetype)queryWithProjectId:(NSString *)projectId
                      testMatrixId:(NSString *)testMatrixId;

@end

/**
 *  Gets the catalog of supported test environments.
 *  May return any of the following canonical error codes:
 *  - INVALID_ARGUMENT - if the request is malformed
 *  - NOT_FOUND - if the environment type does not exist
 *  - INTERNAL - if an internal error occurred
 *
 *  Method: testing.testEnvironmentCatalog.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeTestingCloudPlatform
 *    @c kGTLRAuthScopeTestingCloudPlatformReadOnly
 */
@interface GTLRTestingQuery_TestEnvironmentCatalogGet : GTLRTestingQuery
// Previous library name was
//   +[GTLQueryTesting queryForTestEnvironmentCatalogGetWithenvironmentType:]

/**
 *  Required. The type of environment that should be listed.
 *
 *  Likely values:
 *    @arg @c kGTLRTestingEnvironmentTypeEnvironmentTypeUnspecified Value
 *        "ENVIRONMENT_TYPE_UNSPECIFIED"
 *    @arg @c kGTLRTestingEnvironmentTypeAndroid Value "ANDROID"
 *    @arg @c kGTLRTestingEnvironmentTypeIos Value "IOS"
 *    @arg @c kGTLRTestingEnvironmentTypeNetworkConfiguration Value
 *        "NETWORK_CONFIGURATION"
 *    @arg @c kGTLRTestingEnvironmentTypeProvidedSoftware Value
 *        "PROVIDED_SOFTWARE"
 */
@property(nonatomic, copy, nullable) NSString *environmentType;

/**
 *  For authorization, the cloud project requesting the TestEnvironmentCatalog.
 */
@property(nonatomic, copy, nullable) NSString *projectId;

/**
 *  Fetches a @c GTLRTesting_TestEnvironmentCatalog.
 *
 *  Gets the catalog of supported test environments.
 *  May return any of the following canonical error codes:
 *  - INVALID_ARGUMENT - if the request is malformed
 *  - NOT_FOUND - if the environment type does not exist
 *  - INTERNAL - if an internal error occurred
 *
 *  @param environmentType Required. The type of environment that should be
 *    listed.
 *
 *  Likely values for @c environmentType:
 *    @arg @c kGTLRTestingEnvironmentTypeEnvironmentTypeUnspecified Value
 *        "ENVIRONMENT_TYPE_UNSPECIFIED"
 *    @arg @c kGTLRTestingEnvironmentTypeAndroid Value "ANDROID"
 *    @arg @c kGTLRTestingEnvironmentTypeIos Value "IOS"
 *    @arg @c kGTLRTestingEnvironmentTypeNetworkConfiguration Value
 *        "NETWORK_CONFIGURATION"
 *    @arg @c kGTLRTestingEnvironmentTypeProvidedSoftware Value
 *        "PROVIDED_SOFTWARE"
 *
 *  @return GTLRTestingQuery_TestEnvironmentCatalogGet
 */
+ (instancetype)queryWithEnvironmentType:(NSString *)environmentType;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
