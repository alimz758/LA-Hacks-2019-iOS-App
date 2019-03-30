// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Blogger API (blogger/v3)
// Description:
//   API for access to the data within Blogger.
// Documentation:
//   https://developers.google.com/blogger/docs/3.0/getting_started

#import "GTLRBloggerObjects.h"

// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Blog
//

@implementation GTLRBlogger_Blog
@dynamic customMetaData, descriptionProperty, identifier, kind, locale, name,
         pages, posts, published, selfLink, status, updated, url;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"descriptionProperty" : @"description",
    @"identifier" : @"id"
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Blog_Locale
//

@implementation GTLRBlogger_Blog_Locale
@dynamic country, language, variant;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Blog_Pages
//

@implementation GTLRBlogger_Blog_Pages
@dynamic selfLink, totalItems;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Blog_Posts
//

@implementation GTLRBlogger_Blog_Posts
@dynamic items, selfLink, totalItems;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"items" : [GTLRBlogger_Post class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_BlogList
//

@implementation GTLRBlogger_BlogList
@dynamic blogUserInfos, items, kind;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"blogUserInfos" : [GTLRBlogger_BlogUserInfo class],
    @"items" : [GTLRBlogger_Blog class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_BlogPerUserInfo
//

@implementation GTLRBlogger_BlogPerUserInfo
@dynamic blogId, hasAdminAccess, kind, photosAlbumKey, role, userId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_BlogUserInfo
//

@implementation GTLRBlogger_BlogUserInfo
@dynamic blog, blogUserInfo, kind;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"blogUserInfo" : @"blog_user_info" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Comment
//

@implementation GTLRBlogger_Comment
@dynamic author, blog, content, identifier, inReplyTo, kind, post, published,
         selfLink, status, updated;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Comment_Author
//

@implementation GTLRBlogger_Comment_Author
@dynamic displayName, identifier, image, url;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Comment_Blog
//

@implementation GTLRBlogger_Comment_Blog
@dynamic identifier;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Comment_InReplyTo
//

@implementation GTLRBlogger_Comment_InReplyTo
@dynamic identifier;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Comment_Post
//

@implementation GTLRBlogger_Comment_Post
@dynamic identifier;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Comment_Author_Image
//

@implementation GTLRBlogger_Comment_Author_Image
@dynamic url;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_CommentList
//

@implementation GTLRBlogger_CommentList
@dynamic ETag, items, kind, nextPageToken, prevPageToken;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"items" : [GTLRBlogger_Comment class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Page
//

@implementation GTLRBlogger_Page
@dynamic author, blog, content, ETag, identifier, kind, published, selfLink,
         status, title, updated, url;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"ETag" : @"etag",
    @"identifier" : @"id"
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Page_Author
//

@implementation GTLRBlogger_Page_Author
@dynamic displayName, identifier, image, url;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Page_Blog
//

@implementation GTLRBlogger_Page_Blog
@dynamic identifier;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Page_Author_Image
//

@implementation GTLRBlogger_Page_Author_Image
@dynamic url;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_PageList
//

@implementation GTLRBlogger_PageList
@dynamic ETag, items, kind, nextPageToken;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"items" : [GTLRBlogger_Page class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Pageviews
//

@implementation GTLRBlogger_Pageviews
@dynamic blogId, counts, kind;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"counts" : [GTLRBlogger_Pageviews_Counts_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Pageviews_Counts_Item
//

@implementation GTLRBlogger_Pageviews_Counts_Item
@dynamic count, timeRange;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Post
//

@implementation GTLRBlogger_Post
@dynamic author, blog, content, customMetaData, ETag, identifier, images, kind,
         labels, location, published, readerComments, replies, selfLink, status,
         title, titleLink, updated, url;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  NSDictionary<NSString *, NSString *> *map = @{
    @"ETag" : @"etag",
    @"identifier" : @"id"
  };
  return map;
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"images" : [GTLRBlogger_Post_Images_Item class],
    @"labels" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Post_Author
//

@implementation GTLRBlogger_Post_Author
@dynamic displayName, identifier, image, url;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Post_Blog
//

@implementation GTLRBlogger_Post_Blog
@dynamic identifier;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Post_Images_Item
//

@implementation GTLRBlogger_Post_Images_Item
@dynamic url;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Post_Location
//

@implementation GTLRBlogger_Post_Location
@dynamic lat, lng, name, span;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Post_Replies
//

@implementation GTLRBlogger_Post_Replies
@dynamic items, selfLink, totalItems;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"items" : [GTLRBlogger_Comment class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_Post_Author_Image
//

@implementation GTLRBlogger_Post_Author_Image
@dynamic url;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_PostList
//

@implementation GTLRBlogger_PostList
@dynamic ETag, items, kind, nextPageToken;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"items" : [GTLRBlogger_Post class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_PostPerUserInfo
//

@implementation GTLRBlogger_PostPerUserInfo
@dynamic blogId, hasEditAccess, kind, postId, userId;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_PostUserInfo
//

@implementation GTLRBlogger_PostUserInfo
@dynamic kind, post, postUserInfo;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"postUserInfo" : @"post_user_info" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_PostUserInfosList
//

@implementation GTLRBlogger_PostUserInfosList
@dynamic items, kind, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"items" : [GTLRBlogger_PostUserInfo class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_User
//

@implementation GTLRBlogger_User
@dynamic about, blogs, created, displayName, identifier, kind, locale, selfLink,
         url;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"identifier" : @"id" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_User_Blogs
//

@implementation GTLRBlogger_User_Blogs
@dynamic selfLink;
@end


// ----------------------------------------------------------------------------
//
//   GTLRBlogger_User_Locale
//

@implementation GTLRBlogger_User_Locale
@dynamic country, language, variant;
@end
