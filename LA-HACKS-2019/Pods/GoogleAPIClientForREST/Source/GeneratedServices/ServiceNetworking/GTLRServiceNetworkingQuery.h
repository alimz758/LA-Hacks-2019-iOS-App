// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Service Networking API (servicenetworking/v1beta)
// Description:
//   Provides automatic management of network configurations necessary for
//   certain services.
// Documentation:
//   https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRQuery.h"
#else
  #import "GTLRQuery.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRServiceNetworking_AddSubnetworkRequest;
@class GTLRServiceNetworking_Connection;
@class GTLRServiceNetworking_SearchRangeRequest;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other Service Networking query classes.
 */
@interface GTLRServiceNetworkingQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Gets the latest state of a long-running operation. Clients can use this
 *  method to poll the operation result at intervals as recommended by the API
 *  service.
 *
 *  Method: servicenetworking.operations.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceNetworkingCloudPlatform
 *    @c kGTLRAuthScopeServiceNetworkingServiceManagement
 */
@interface GTLRServiceNetworkingQuery_OperationsGet : GTLRServiceNetworkingQuery
// Previous library name was
//   +[GTLQueryServiceNetworking queryForOperationsGetWithname:]

/** The name of the operation resource. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRServiceNetworking_Operation.
 *
 *  Gets the latest state of a long-running operation. Clients can use this
 *  method to poll the operation result at intervals as recommended by the API
 *  service.
 *
 *  @param name The name of the operation resource.
 *
 *  @return GTLRServiceNetworkingQuery_OperationsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  For service producers, provisions a new subnet in a
 *  peered service's shared VPC network in the requested region and with the
 *  requested size that's expressed as a CIDR range (number of leading bits of
 *  ipV4 network mask). The method checks against the assigned allocated ranges
 *  to find a non-conflicting IP address range. The method will reuse a subnet
 *  if subsequent calls contain the same subnet name, region, and prefix
 *  length. This method will make producer's tenant project to be a shared VPC
 *  service project as needed. The response from the `get` operation will be of
 *  type `Subnetwork` if the operation successfully completes.
 *
 *  Method: servicenetworking.services.addSubnetwork
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceNetworkingCloudPlatform
 *    @c kGTLRAuthScopeServiceNetworkingServiceManagement
 */
@interface GTLRServiceNetworkingQuery_ServicesAddSubnetwork : GTLRServiceNetworkingQuery
// Previous library name was
//   +[GTLQueryServiceNetworking queryForServicesAddSubnetworkWithObject:parent:]

/**
 *  Required. A tenant project in the service producer organization, in the
 *  following format: services/{service}/{collection-id}/{resource-id}.
 *  {collection-id} is the cloud resource collection type that represents the
 *  tenant project. Only `projects` are supported.
 *  {resource-id} is the tenant project numeric id, such as
 *  `123456`. {service} the name of the peering service, such as
 *  `service-peering.example.com`. This service must already be
 *  enabled in the service consumer's project.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRServiceNetworking_Operation.
 *
 *  For service producers, provisions a new subnet in a
 *  peered service's shared VPC network in the requested region and with the
 *  requested size that's expressed as a CIDR range (number of leading bits of
 *  ipV4 network mask). The method checks against the assigned allocated ranges
 *  to find a non-conflicting IP address range. The method will reuse a subnet
 *  if subsequent calls contain the same subnet name, region, and prefix
 *  length. This method will make producer's tenant project to be a shared VPC
 *  service project as needed. The response from the `get` operation will be of
 *  type `Subnetwork` if the operation successfully completes.
 *
 *  @param object The @c GTLRServiceNetworking_AddSubnetworkRequest to include
 *    in the query.
 *  @param parent Required. A tenant project in the service producer
 *    organization, in the
 *    following format: services/{service}/{collection-id}/{resource-id}.
 *    {collection-id} is the cloud resource collection type that represents the
 *    tenant project. Only `projects` are supported.
 *    {resource-id} is the tenant project numeric id, such as
 *    `123456`. {service} the name of the peering service, such as
 *    `service-peering.example.com`. This service must already be
 *    enabled in the service consumer's project.
 *
 *  @return GTLRServiceNetworkingQuery_ServicesAddSubnetwork
 */
+ (instancetype)queryWithObject:(GTLRServiceNetworking_AddSubnetworkRequest *)object
                         parent:(NSString *)parent;

@end

/**
 *  Creates a private connection that establishes a VPC Network Peering
 *  connection to a VPC network in the service producer's organization.
 *  The administrator of the service consumer's VPC network invokes this
 *  method. The administrator must assign one or more allocated IP ranges for
 *  provisioning subnetworks in the service producer's VPC network. This
 *  connection is used for all supported services in the service producer's
 *  organization, so it only needs to be invoked once. The response from the
 *  `get` operation will be of type `Connection` if the operation successfully
 *  completes.
 *
 *  Method: servicenetworking.services.connections.create
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceNetworkingCloudPlatform
 *    @c kGTLRAuthScopeServiceNetworkingServiceManagement
 */
@interface GTLRServiceNetworkingQuery_ServicesConnectionsCreate : GTLRServiceNetworkingQuery
// Previous library name was
//   +[GTLQueryServiceNetworking queryForServicesConnectionsCreateWithObject:parent:]

/**
 *  The service that is managing peering connectivity for a service producer's
 *  organization. For Google services that support this functionality, this
 *  value is `services/servicenetworking.googleapis.com`.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRServiceNetworking_Operation.
 *
 *  Creates a private connection that establishes a VPC Network Peering
 *  connection to a VPC network in the service producer's organization.
 *  The administrator of the service consumer's VPC network invokes this
 *  method. The administrator must assign one or more allocated IP ranges for
 *  provisioning subnetworks in the service producer's VPC network. This
 *  connection is used for all supported services in the service producer's
 *  organization, so it only needs to be invoked once. The response from the
 *  `get` operation will be of type `Connection` if the operation successfully
 *  completes.
 *
 *  @param object The @c GTLRServiceNetworking_Connection to include in the
 *    query.
 *  @param parent The service that is managing peering connectivity for a
 *    service producer's
 *    organization. For Google services that support this functionality, this
 *    value is `services/servicenetworking.googleapis.com`.
 *
 *  @return GTLRServiceNetworkingQuery_ServicesConnectionsCreate
 */
+ (instancetype)queryWithObject:(GTLRServiceNetworking_Connection *)object
                         parent:(NSString *)parent;

@end

/**
 *  List the private connections that are configured in a service consumer's
 *  VPC network.
 *
 *  Method: servicenetworking.services.connections.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceNetworkingCloudPlatform
 *    @c kGTLRAuthScopeServiceNetworkingServiceManagement
 */
@interface GTLRServiceNetworkingQuery_ServicesConnectionsList : GTLRServiceNetworkingQuery
// Previous library name was
//   +[GTLQueryServiceNetworking queryForServicesConnectionsListWithparent:]

/**
 *  The name of service consumer's VPC network that's connected with service
 *  producer network through a private connection. The network name must be in
 *  the following format:
 *  `projects/{project}/global/networks/{network}`. {project} is a
 *  project number, such as in `12345` that includes the VPC service
 *  consumer's VPC network. {network} is the name of the service consumer's VPC
 *  network.
 */
@property(nonatomic, copy, nullable) NSString *network;

/**
 *  The service that is managing peering connectivity for a service producer's
 *  organization. For Google services that support this functionality, this
 *  value is `services/servicenetworking.googleapis.com`.
 *  If you specify `-` as the parameter value, all configured public peering
 *  services are listed.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRServiceNetworking_ListConnectionsResponse.
 *
 *  List the private connections that are configured in a service consumer's
 *  VPC network.
 *
 *  @param parent The service that is managing peering connectivity for a
 *    service producer's
 *    organization. For Google services that support this functionality, this
 *    value is `services/servicenetworking.googleapis.com`.
 *    If you specify `-` as the parameter value, all configured public peering
 *    services are listed.
 *
 *  @return GTLRServiceNetworkingQuery_ServicesConnectionsList
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

/**
 *  Updates the allocated ranges that are assigned to a connection.
 *  The response from the `get` operation will be of type `Connection` if the
 *  operation successfully completes.
 *
 *  Method: servicenetworking.services.patch
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceNetworkingCloudPlatform
 *    @c kGTLRAuthScopeServiceNetworkingServiceManagement
 */
@interface GTLRServiceNetworkingQuery_ServicesPatch : GTLRServiceNetworkingQuery
// Previous library name was
//   +[GTLQueryServiceNetworking queryForServicesPatchWithObject:name:]

/**
 *  If a previously defined allocated range is removed, force flag must be
 *  set to true.
 */
@property(nonatomic, assign) BOOL force;

/**
 *  The service producer peering service that is managing peering connectivity
 *  for a service producer organization.
 *  For Google services that support this functionality, this is
 *  `services/servicenetworking.googleapis.com`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  The update mask. If this is omitted, it defaults to "*". You can only
 *  update the listed peering ranges.
 *
 *  String format is a comma-separated list of fields.
 */
@property(nonatomic, copy, nullable) NSString *updateMask;

/**
 *  Fetches a @c GTLRServiceNetworking_Operation.
 *
 *  Updates the allocated ranges that are assigned to a connection.
 *  The response from the `get` operation will be of type `Connection` if the
 *  operation successfully completes.
 *
 *  @param object The @c GTLRServiceNetworking_Connection to include in the
 *    query.
 *  @param name The service producer peering service that is managing peering
 *    connectivity
 *    for a service producer organization.
 *    For Google services that support this functionality, this is
 *    `services/servicenetworking.googleapis.com`.
 *
 *  @return GTLRServiceNetworkingQuery_ServicesPatch
 */
+ (instancetype)queryWithObject:(GTLRServiceNetworking_Connection *)object
                           name:(NSString *)name;

@end

/**
 *  Service producers can use this method to find a currently unused range
 *  within consumer allocated ranges. This returned range is not reserved,
 *  and not guaranteed to remain unused.
 *  It will validate previously provided allocated ranges, find
 *  non-conflicting sub-range of requested size (expressed in
 *  number of leading bits of ipv4 network mask, as in CIDR range
 *  notation).
 *  Operation<response: Range>
 *
 *  Method: servicenetworking.services.searchRange
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeServiceNetworkingCloudPlatform
 *    @c kGTLRAuthScopeServiceNetworkingServiceManagement
 */
@interface GTLRServiceNetworkingQuery_ServicesSearchRange : GTLRServiceNetworkingQuery
// Previous library name was
//   +[GTLQueryServiceNetworking queryForServicesSearchRangeWithObject:parent:]

/**
 *  Required. This is in a form services/{service}.
 *  {service} the name of the private access management service, for example
 *  'service-peering.example.com'.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRServiceNetworking_Operation.
 *
 *  Service producers can use this method to find a currently unused range
 *  within consumer allocated ranges. This returned range is not reserved,
 *  and not guaranteed to remain unused.
 *  It will validate previously provided allocated ranges, find
 *  non-conflicting sub-range of requested size (expressed in
 *  number of leading bits of ipv4 network mask, as in CIDR range
 *  notation).
 *  Operation<response: Range>
 *
 *  @param object The @c GTLRServiceNetworking_SearchRangeRequest to include in
 *    the query.
 *  @param parent Required. This is in a form services/{service}.
 *    {service} the name of the private access management service, for example
 *    'service-peering.example.com'.
 *
 *  @return GTLRServiceNetworkingQuery_ServicesSearchRange
 */
+ (instancetype)queryWithObject:(GTLRServiceNetworking_SearchRangeRequest *)object
                         parent:(NSString *)parent;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
