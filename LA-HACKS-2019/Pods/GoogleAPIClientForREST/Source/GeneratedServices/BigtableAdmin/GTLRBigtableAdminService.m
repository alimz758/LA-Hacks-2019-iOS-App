// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud Bigtable Admin API (bigtableadmin/v2)
// Documentation:
//   https://cloud.google.com/bigtable/

#import "GTLRBigtableAdmin.h"

// ----------------------------------------------------------------------------
// Authorization scopes

NSString * const kGTLRAuthScopeBigtableAdminBigtableAdmin      = @"https://www.googleapis.com/auth/bigtable.admin";
NSString * const kGTLRAuthScopeBigtableAdminBigtableAdminCluster = @"https://www.googleapis.com/auth/bigtable.admin.cluster";
NSString * const kGTLRAuthScopeBigtableAdminBigtableAdminInstance = @"https://www.googleapis.com/auth/bigtable.admin.instance";
NSString * const kGTLRAuthScopeBigtableAdminBigtableAdminTable = @"https://www.googleapis.com/auth/bigtable.admin.table";
NSString * const kGTLRAuthScopeBigtableAdminCloudBigtableAdmin = @"https://www.googleapis.com/auth/cloud-bigtable.admin";
NSString * const kGTLRAuthScopeBigtableAdminCloudBigtableAdminCluster = @"https://www.googleapis.com/auth/cloud-bigtable.admin.cluster";
NSString * const kGTLRAuthScopeBigtableAdminCloudBigtableAdminTable = @"https://www.googleapis.com/auth/cloud-bigtable.admin.table";
NSString * const kGTLRAuthScopeBigtableAdminCloudPlatform      = @"https://www.googleapis.com/auth/cloud-platform";
NSString * const kGTLRAuthScopeBigtableAdminCloudPlatformReadOnly = @"https://www.googleapis.com/auth/cloud-platform.read-only";

// ----------------------------------------------------------------------------
//   GTLRBigtableAdminService
//

@implementation GTLRBigtableAdminService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://bigtableadmin.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end
