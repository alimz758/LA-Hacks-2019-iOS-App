// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Mirror API (mirror/v1)
// Description:
//   Interacts with Glass users via the timeline.
// Documentation:
//   https://developers.google.com/glass

#if GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRQuery.h"
#else
  #import "GTLRQuery.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRMirror_Account;
@class GTLRMirror_Contact;
@class GTLRMirror_Subscription;
@class GTLRMirror_TimelineItem;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the query classes' properties below.

// ----------------------------------------------------------------------------
// orderBy

/**
 *  Results will be ordered by displayTime (default). This is the same ordering
 *  as is used in the timeline on the device.
 *
 *  Value: "displayTime"
 */
GTLR_EXTERN NSString * const kGTLRMirrorOrderByDisplayTime;
/**
 *  Results will be ordered by the time at which they were last written to the
 *  data store.
 *
 *  Value: "writeTime"
 */
GTLR_EXTERN NSString * const kGTLRMirrorOrderByWriteTime;

// ----------------------------------------------------------------------------
// Query Classes
//

/**
 *  Parent class for other Mirror query classes.
 */
@interface GTLRMirrorQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Inserts a new account for a user
 *
 *  Method: mirror.accounts.insert
 */
@interface GTLRMirrorQuery_AccountsInsert : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForAccountsInsertWithObject:userToken:accountType:accountName:]

/** The name of the account to be passed to the Android Account Manager. */
@property(nonatomic, copy, nullable) NSString *accountName;

/** Account type to be passed to Android Account Manager. */
@property(nonatomic, copy, nullable) NSString *accountType;

/** The ID for the user. */
@property(nonatomic, copy, nullable) NSString *userToken;

/**
 *  Fetches a @c GTLRMirror_Account.
 *
 *  Inserts a new account for a user
 *
 *  @param object The @c GTLRMirror_Account to include in the query.
 *  @param userToken The ID for the user.
 *  @param accountType Account type to be passed to Android Account Manager.
 *  @param accountName The name of the account to be passed to the Android
 *    Account Manager.
 *
 *  @return GTLRMirrorQuery_AccountsInsert
 */
+ (instancetype)queryWithObject:(GTLRMirror_Account *)object
                      userToken:(NSString *)userToken
                    accountType:(NSString *)accountType
                    accountName:(NSString *)accountName;

@end

/**
 *  Deletes a contact.
 *
 *  Method: mirror.contacts.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_ContactsDelete : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForContactsDeleteWithidentifier:]

/**
 *  The ID of the contact.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  Upon successful completion, the callback's object and error parameters will
 *  be nil. This query does not fetch an object.
 *
 *  Deletes a contact.
 *
 *  @param identifier The ID of the contact.
 *
 *  @return GTLRMirrorQuery_ContactsDelete
 */
+ (instancetype)queryWithIdentifier:(NSString *)identifier;

@end

/**
 *  Gets a single contact by ID.
 *
 *  Method: mirror.contacts.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_ContactsGet : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForContactsGetWithidentifier:]

/**
 *  The ID of the contact.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  Fetches a @c GTLRMirror_Contact.
 *
 *  Gets a single contact by ID.
 *
 *  @param identifier The ID of the contact.
 *
 *  @return GTLRMirrorQuery_ContactsGet
 */
+ (instancetype)queryWithIdentifier:(NSString *)identifier;

@end

/**
 *  Inserts a new contact.
 *
 *  Method: mirror.contacts.insert
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_ContactsInsert : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForContactsInsertWithObject:]

/**
 *  Fetches a @c GTLRMirror_Contact.
 *
 *  Inserts a new contact.
 *
 *  @param object The @c GTLRMirror_Contact to include in the query.
 *
 *  @return GTLRMirrorQuery_ContactsInsert
 */
+ (instancetype)queryWithObject:(GTLRMirror_Contact *)object;

@end

/**
 *  Retrieves a list of contacts for the authenticated user.
 *
 *  Method: mirror.contacts.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_ContactsList : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForContactsList]

/**
 *  Fetches a @c GTLRMirror_ContactsListResponse.
 *
 *  Retrieves a list of contacts for the authenticated user.
 *
 *  @return GTLRMirrorQuery_ContactsList
 */
+ (instancetype)query;

@end

/**
 *  Updates a contact in place. This method supports patch semantics.
 *
 *  Method: mirror.contacts.patch
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_ContactsPatch : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForContactsPatchWithObject:identifier:]

/**
 *  The ID of the contact.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  Fetches a @c GTLRMirror_Contact.
 *
 *  Updates a contact in place. This method supports patch semantics.
 *
 *  @param object The @c GTLRMirror_Contact to include in the query.
 *  @param identifier The ID of the contact.
 *
 *  @return GTLRMirrorQuery_ContactsPatch
 */
+ (instancetype)queryWithObject:(GTLRMirror_Contact *)object
                     identifier:(NSString *)identifier;

@end

/**
 *  Updates a contact in place.
 *
 *  Method: mirror.contacts.update
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_ContactsUpdate : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForContactsUpdateWithObject:identifier:]

/**
 *  The ID of the contact.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  Fetches a @c GTLRMirror_Contact.
 *
 *  Updates a contact in place.
 *
 *  @param object The @c GTLRMirror_Contact to include in the query.
 *  @param identifier The ID of the contact.
 *
 *  @return GTLRMirrorQuery_ContactsUpdate
 */
+ (instancetype)queryWithObject:(GTLRMirror_Contact *)object
                     identifier:(NSString *)identifier;

@end

/**
 *  Gets a single location by ID.
 *
 *  Method: mirror.locations.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassLocation
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_LocationsGet : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForLocationsGetWithidentifier:]

/**
 *  The ID of the location or latest for the last known location.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  Fetches a @c GTLRMirror_Location.
 *
 *  Gets a single location by ID.
 *
 *  @param identifier The ID of the location or latest for the last known
 *    location.
 *
 *  @return GTLRMirrorQuery_LocationsGet
 */
+ (instancetype)queryWithIdentifier:(NSString *)identifier;

@end

/**
 *  Retrieves a list of locations for the user.
 *
 *  Method: mirror.locations.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassLocation
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_LocationsList : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForLocationsList]

/**
 *  Fetches a @c GTLRMirror_LocationsListResponse.
 *
 *  Retrieves a list of locations for the user.
 *
 *  @return GTLRMirrorQuery_LocationsList
 */
+ (instancetype)query;

@end

/**
 *  Gets a single setting by ID.
 *
 *  Method: mirror.settings.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_SettingsGet : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForSettingsGetWithidentifier:]

/**
 *  The ID of the setting. The following IDs are valid:
 *  - locale - The key to the user’s language/locale (BCP 47 identifier) that
 *  Glassware should use to render localized content.
 *  - timezone - The key to the user’s current time zone region as defined in
 *  the tz database. Example: America/Los_Angeles.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  Fetches a @c GTLRMirror_Setting.
 *
 *  Gets a single setting by ID.
 *
 *  @param identifier The ID of the setting. The following IDs are valid:
 *    - locale - The key to the user’s language/locale (BCP 47 identifier) that
 *    Glassware should use to render localized content.
 *    - timezone - The key to the user’s current time zone region as defined in
 *    the tz database. Example: America/Los_Angeles.
 *
 *  @return GTLRMirrorQuery_SettingsGet
 */
+ (instancetype)queryWithIdentifier:(NSString *)identifier;

@end

/**
 *  Deletes a subscription.
 *
 *  Method: mirror.subscriptions.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_SubscriptionsDelete : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForSubscriptionsDeleteWithidentifier:]

/**
 *  The ID of the subscription.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  Upon successful completion, the callback's object and error parameters will
 *  be nil. This query does not fetch an object.
 *
 *  Deletes a subscription.
 *
 *  @param identifier The ID of the subscription.
 *
 *  @return GTLRMirrorQuery_SubscriptionsDelete
 */
+ (instancetype)queryWithIdentifier:(NSString *)identifier;

@end

/**
 *  Creates a new subscription.
 *
 *  Method: mirror.subscriptions.insert
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_SubscriptionsInsert : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForSubscriptionsInsertWithObject:]

/**
 *  Fetches a @c GTLRMirror_Subscription.
 *
 *  Creates a new subscription.
 *
 *  @param object The @c GTLRMirror_Subscription to include in the query.
 *
 *  @return GTLRMirrorQuery_SubscriptionsInsert
 */
+ (instancetype)queryWithObject:(GTLRMirror_Subscription *)object;

@end

/**
 *  Retrieves a list of subscriptions for the authenticated user and service.
 *
 *  Method: mirror.subscriptions.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_SubscriptionsList : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForSubscriptionsList]

/**
 *  Fetches a @c GTLRMirror_SubscriptionsListResponse.
 *
 *  Retrieves a list of subscriptions for the authenticated user and service.
 *
 *  @return GTLRMirrorQuery_SubscriptionsList
 */
+ (instancetype)query;

@end

/**
 *  Updates an existing subscription in place.
 *
 *  Method: mirror.subscriptions.update
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_SubscriptionsUpdate : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForSubscriptionsUpdateWithObject:identifier:]

/**
 *  The ID of the subscription.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  Fetches a @c GTLRMirror_Subscription.
 *
 *  Updates an existing subscription in place.
 *
 *  @param object The @c GTLRMirror_Subscription to include in the query.
 *  @param identifier The ID of the subscription.
 *
 *  @return GTLRMirrorQuery_SubscriptionsUpdate
 */
+ (instancetype)queryWithObject:(GTLRMirror_Subscription *)object
                     identifier:(NSString *)identifier;

@end

/**
 *  Deletes an attachment from a timeline item.
 *
 *  Method: mirror.timeline.attachments.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_TimelineAttachmentsDelete : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForTimelineAttachmentsDeleteWithitemId:attachmentId:]

/** The ID of the attachment. */
@property(nonatomic, copy, nullable) NSString *attachmentId;

/** The ID of the timeline item the attachment belongs to. */
@property(nonatomic, copy, nullable) NSString *itemId;

/**
 *  Upon successful completion, the callback's object and error parameters will
 *  be nil. This query does not fetch an object.
 *
 *  Deletes an attachment from a timeline item.
 *
 *  @param itemId The ID of the timeline item the attachment belongs to.
 *  @param attachmentId The ID of the attachment.
 *
 *  @return GTLRMirrorQuery_TimelineAttachmentsDelete
 */
+ (instancetype)queryWithItemId:(NSString *)itemId
                   attachmentId:(NSString *)attachmentId;

@end

/**
 *  Retrieves an attachment on a timeline item by item ID and attachment ID.
 *
 *  Method: mirror.timeline.attachments.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_TimelineAttachmentsGet : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForTimelineAttachmentsGetWithitemId:attachmentId:]

/** The ID of the attachment. */
@property(nonatomic, copy, nullable) NSString *attachmentId;

/** The ID of the timeline item the attachment belongs to. */
@property(nonatomic, copy, nullable) NSString *itemId;

/**
 *  Fetches a @c GTLRMirror_Attachment.
 *
 *  Retrieves an attachment on a timeline item by item ID and attachment ID.
 *
 *  @param itemId The ID of the timeline item the attachment belongs to.
 *  @param attachmentId The ID of the attachment.
 *
 *  @return GTLRMirrorQuery_TimelineAttachmentsGet
 */
+ (instancetype)queryWithItemId:(NSString *)itemId
                   attachmentId:(NSString *)attachmentId;

/**
 *  Fetches the requested resource data as a @c GTLRDataObject.
 *
 *  Retrieves an attachment on a timeline item by item ID and attachment ID.
 *
 *  @param itemId The ID of the timeline item the attachment belongs to.
 *  @param attachmentId The ID of the attachment.
 *
 *  @return GTLRMirrorQuery_TimelineAttachmentsGet
 */
+ (instancetype)queryForMediaWithItemId:(NSString *)itemId
                           attachmentId:(NSString *)attachmentId;

@end

/**
 *  Adds a new attachment to a timeline item.
 *
 *  Method: mirror.timeline.attachments.insert
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_TimelineAttachmentsInsert : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForTimelineAttachmentsInsertWithitemId:]

/** The ID of the timeline item the attachment belongs to. */
@property(nonatomic, copy, nullable) NSString *itemId;

/**
 *  Fetches a @c GTLRMirror_Attachment.
 *
 *  Adds a new attachment to a timeline item.
 *
 *  @param itemId The ID of the timeline item the attachment belongs to.
 *  @param uploadParameters The media to include in this query. Maximum size
 *    10MB. Accepted MIME types: audio/ *, image/ *, video/ *
 *
 *  @return GTLRMirrorQuery_TimelineAttachmentsInsert
 */
+ (instancetype)queryWithItemId:(NSString *)itemId
               uploadParameters:(nullable GTLRUploadParameters *)uploadParameters;

@end

/**
 *  Returns a list of attachments for a timeline item.
 *
 *  Method: mirror.timeline.attachments.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_TimelineAttachmentsList : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForTimelineAttachmentsListWithitemId:]

/** The ID of the timeline item whose attachments should be listed. */
@property(nonatomic, copy, nullable) NSString *itemId;

/**
 *  Fetches a @c GTLRMirror_AttachmentsListResponse.
 *
 *  Returns a list of attachments for a timeline item.
 *
 *  @param itemId The ID of the timeline item whose attachments should be
 *    listed.
 *
 *  @return GTLRMirrorQuery_TimelineAttachmentsList
 */
+ (instancetype)queryWithItemId:(NSString *)itemId;

@end

/**
 *  Deletes a timeline item.
 *
 *  Method: mirror.timeline.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassLocation
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_TimelineDelete : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForTimelineDeleteWithidentifier:]

/**
 *  The ID of the timeline item.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  Upon successful completion, the callback's object and error parameters will
 *  be nil. This query does not fetch an object.
 *
 *  Deletes a timeline item.
 *
 *  @param identifier The ID of the timeline item.
 *
 *  @return GTLRMirrorQuery_TimelineDelete
 */
+ (instancetype)queryWithIdentifier:(NSString *)identifier;

@end

/**
 *  Gets a single timeline item by ID.
 *
 *  Method: mirror.timeline.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassLocation
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_TimelineGet : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForTimelineGetWithidentifier:]

/**
 *  The ID of the timeline item.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  Fetches a @c GTLRMirror_TimelineItem.
 *
 *  Gets a single timeline item by ID.
 *
 *  @param identifier The ID of the timeline item.
 *
 *  @return GTLRMirrorQuery_TimelineGet
 */
+ (instancetype)queryWithIdentifier:(NSString *)identifier;

@end

/**
 *  Inserts a new item into the timeline.
 *
 *  Method: mirror.timeline.insert
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassLocation
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_TimelineInsert : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForTimelineInsertWithObject:]

/**
 *  Fetches a @c GTLRMirror_TimelineItem.
 *
 *  Inserts a new item into the timeline.
 *
 *  @param object The @c GTLRMirror_TimelineItem to include in the query.
 *  @param uploadParameters The media to include in this query. Maximum size
 *    10MB. Accepted MIME types: audio/ *, image/ *, video/ *
 *
 *  @return GTLRMirrorQuery_TimelineInsert
 */
+ (instancetype)queryWithObject:(GTLRMirror_TimelineItem *)object
               uploadParameters:(nullable GTLRUploadParameters *)uploadParameters;

@end

/**
 *  Retrieves a list of timeline items for the authenticated user.
 *
 *  Method: mirror.timeline.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassLocation
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_TimelineList : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForTimelineList]

/** If provided, only items with the given bundleId will be returned. */
@property(nonatomic, copy, nullable) NSString *bundleId;

/** If true, tombstone records for deleted items will be returned. */
@property(nonatomic, assign) BOOL includeDeleted;

/**
 *  The maximum number of items to include in the response, used for paging.
 */
@property(nonatomic, assign) NSUInteger maxResults;

/**
 *  Controls the order in which timeline items are returned.
 *
 *  Likely values:
 *    @arg @c kGTLRMirrorOrderByDisplayTime Results will be ordered by
 *        displayTime (default). This is the same ordering as is used in the
 *        timeline on the device. (Value: "displayTime")
 *    @arg @c kGTLRMirrorOrderByWriteTime Results will be ordered by the time at
 *        which they were last written to the data store. (Value: "writeTime")
 */
@property(nonatomic, copy, nullable) NSString *orderBy;

/** Token for the page of results to return. */
@property(nonatomic, copy, nullable) NSString *pageToken;

/** If true, only pinned items will be returned. */
@property(nonatomic, assign) BOOL pinnedOnly;

/** If provided, only items with the given sourceItemId will be returned. */
@property(nonatomic, copy, nullable) NSString *sourceItemId;

/**
 *  Fetches a @c GTLRMirror_TimelineListResponse.
 *
 *  Retrieves a list of timeline items for the authenticated user.
 *
 *  @return GTLRMirrorQuery_TimelineList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)query;

@end

/**
 *  Updates a timeline item in place. This method supports patch semantics.
 *
 *  Method: mirror.timeline.patch
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassLocation
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_TimelinePatch : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForTimelinePatchWithObject:identifier:]

/**
 *  The ID of the timeline item.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  Fetches a @c GTLRMirror_TimelineItem.
 *
 *  Updates a timeline item in place. This method supports patch semantics.
 *
 *  @param object The @c GTLRMirror_TimelineItem to include in the query.
 *  @param identifier The ID of the timeline item.
 *
 *  @return GTLRMirrorQuery_TimelinePatch
 */
+ (instancetype)queryWithObject:(GTLRMirror_TimelineItem *)object
                     identifier:(NSString *)identifier;

@end

/**
 *  Updates a timeline item in place.
 *
 *  Method: mirror.timeline.update
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeMirrorGlassLocation
 *    @c kGTLRAuthScopeMirrorGlassTimeline
 */
@interface GTLRMirrorQuery_TimelineUpdate : GTLRMirrorQuery
// Previous library name was
//   +[GTLQueryMirror queryForTimelineUpdateWithObject:identifier:]

/**
 *  The ID of the timeline item.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

/**
 *  Fetches a @c GTLRMirror_TimelineItem.
 *
 *  Updates a timeline item in place.
 *
 *  @param object The @c GTLRMirror_TimelineItem to include in the query.
 *  @param identifier The ID of the timeline item.
 *  @param uploadParameters The media to include in this query. Maximum size
 *    10MB. Accepted MIME types: audio/ *, image/ *, video/ *
 *
 *  @return GTLRMirrorQuery_TimelineUpdate
 */
+ (instancetype)queryWithObject:(GTLRMirror_TimelineItem *)object
                     identifier:(NSString *)identifier
               uploadParameters:(nullable GTLRUploadParameters *)uploadParameters;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
