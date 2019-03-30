// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   IAM Service Account Credentials API (iamcredentials/v1)
// Description:
//   Creates short-lived, limited-privilege credentials for IAM service
//   accounts.
// Documentation:
//   https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRQuery.h"
#else
  #import "GTLRQuery.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRIAMCredentials_GenerateAccessTokenRequest;
@class GTLRIAMCredentials_GenerateIdentityBindingAccessTokenRequest;
@class GTLRIAMCredentials_GenerateIdTokenRequest;
@class GTLRIAMCredentials_SignBlobRequest;
@class GTLRIAMCredentials_SignJwtRequest;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other IAM Credentials query classes.
 */
@interface GTLRIAMCredentialsQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Generates an OAuth 2.0 access token for a service account.
 *
 *  Method: iamcredentials.projects.serviceAccounts.generateAccessToken
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeIAMCredentialsCloudPlatform
 */
@interface GTLRIAMCredentialsQuery_ProjectsServiceAccountsGenerateAccessToken : GTLRIAMCredentialsQuery
// Previous library name was
//   +[GTLQueryIAMCredentials queryForProjectsServiceAccountsGenerateAccessTokenWithObject:name:]

/**
 *  The resource name of the service account for which the credentials
 *  are requested, in the following format:
 *  `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRIAMCredentials_GenerateAccessTokenResponse.
 *
 *  Generates an OAuth 2.0 access token for a service account.
 *
 *  @param object The @c GTLRIAMCredentials_GenerateAccessTokenRequest to
 *    include in the query.
 *  @param name The resource name of the service account for which the
 *    credentials
 *    are requested, in the following format:
 *    `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`.
 *
 *  @return GTLRIAMCredentialsQuery_ProjectsServiceAccountsGenerateAccessToken
 */
+ (instancetype)queryWithObject:(GTLRIAMCredentials_GenerateAccessTokenRequest *)object
                           name:(NSString *)name;

@end

/**
 *  GTLRIAMCredentialsQuery_ProjectsServiceAccountsGenerateIdentityBindingAccessToken
 *
 *  Method: iamcredentials.projects.serviceAccounts.generateIdentityBindingAccessToken
 */
@interface GTLRIAMCredentialsQuery_ProjectsServiceAccountsGenerateIdentityBindingAccessToken : GTLRIAMCredentialsQuery
// Previous library name was
//   +[GTLQueryIAMCredentials queryForProjectsServiceAccountsGenerateIdentityBindingAccessTokenWithObject:name:]

/**
 *  The resource name of the service account for which the credentials
 *  are requested, in the following format:
 *  `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRIAMCredentials_GenerateIdentityBindingAccessTokenResponse.
 *
 *  @param object The @c
 *    GTLRIAMCredentials_GenerateIdentityBindingAccessTokenRequest to include in
 *    the query.
 *  @param name The resource name of the service account for which the
 *    credentials
 *    are requested, in the following format:
 *    `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`.
 *
 *  @return GTLRIAMCredentialsQuery_ProjectsServiceAccountsGenerateIdentityBindingAccessToken
 */
+ (instancetype)queryWithObject:(GTLRIAMCredentials_GenerateIdentityBindingAccessTokenRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Generates an OpenID Connect ID token for a service account.
 *
 *  Method: iamcredentials.projects.serviceAccounts.generateIdToken
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeIAMCredentialsCloudPlatform
 */
@interface GTLRIAMCredentialsQuery_ProjectsServiceAccountsGenerateIdToken : GTLRIAMCredentialsQuery
// Previous library name was
//   +[GTLQueryIAMCredentials queryForProjectsServiceAccountsGenerateIdTokenWithObject:name:]

/**
 *  The resource name of the service account for which the credentials
 *  are requested, in the following format:
 *  `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRIAMCredentials_GenerateIdTokenResponse.
 *
 *  Generates an OpenID Connect ID token for a service account.
 *
 *  @param object The @c GTLRIAMCredentials_GenerateIdTokenRequest to include in
 *    the query.
 *  @param name The resource name of the service account for which the
 *    credentials
 *    are requested, in the following format:
 *    `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`.
 *
 *  @return GTLRIAMCredentialsQuery_ProjectsServiceAccountsGenerateIdToken
 */
+ (instancetype)queryWithObject:(GTLRIAMCredentials_GenerateIdTokenRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Signs a blob using a service account's system-managed private key.
 *
 *  Method: iamcredentials.projects.serviceAccounts.signBlob
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeIAMCredentialsCloudPlatform
 */
@interface GTLRIAMCredentialsQuery_ProjectsServiceAccountsSignBlob : GTLRIAMCredentialsQuery
// Previous library name was
//   +[GTLQueryIAMCredentials queryForProjectsServiceAccountsSignBlobWithObject:name:]

/**
 *  The resource name of the service account for which the credentials
 *  are requested, in the following format:
 *  `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRIAMCredentials_SignBlobResponse.
 *
 *  Signs a blob using a service account's system-managed private key.
 *
 *  @param object The @c GTLRIAMCredentials_SignBlobRequest to include in the
 *    query.
 *  @param name The resource name of the service account for which the
 *    credentials
 *    are requested, in the following format:
 *    `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`.
 *
 *  @return GTLRIAMCredentialsQuery_ProjectsServiceAccountsSignBlob
 */
+ (instancetype)queryWithObject:(GTLRIAMCredentials_SignBlobRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Signs a JWT using a service account's system-managed private key.
 *
 *  Method: iamcredentials.projects.serviceAccounts.signJwt
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeIAMCredentialsCloudPlatform
 */
@interface GTLRIAMCredentialsQuery_ProjectsServiceAccountsSignJwt : GTLRIAMCredentialsQuery
// Previous library name was
//   +[GTLQueryIAMCredentials queryForProjectsServiceAccountsSignJwtWithObject:name:]

/**
 *  The resource name of the service account for which the credentials
 *  are requested, in the following format:
 *  `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRIAMCredentials_SignJwtResponse.
 *
 *  Signs a JWT using a service account's system-managed private key.
 *
 *  @param object The @c GTLRIAMCredentials_SignJwtRequest to include in the
 *    query.
 *  @param name The resource name of the service account for which the
 *    credentials
 *    are requested, in the following format:
 *    `projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}`.
 *
 *  @return GTLRIAMCredentialsQuery_ProjectsServiceAccountsSignJwt
 */
+ (instancetype)queryWithObject:(GTLRIAMCredentials_SignJwtRequest *)object
                           name:(NSString *)name;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
