// AUTO-GENERATED FILE. DO NOT MODIFY.
// This file is auto-generated by the Ballerina OpenAPI tool.

import ballerina/http;

public type StandardError record {
    record {} subCategory?;
    record {|string[]...;|} context;
    record {|string...;|} links;
    string id?;
    string category;
    string message;
    ErrorDetail[] errors;
    string status;
};

public type PublicCampaignBatchUpdateItem record {
    string id;
    record {|string...;|} properties;
};

public type CollectionResponsePublicCampaignAssetForwardPaging record {
    ForwardPaging paging?;
    PublicCampaignAsset[] results;
};

public type PublicCampaignReadInput record {
    string id;
};

public type BatchResponsePublicCampaignWithAssetsWithErrors record {
    string completedAt;
    int:Signed32 numErrors?;
    string requestedAt?;
    string startedAt;
    record {|string...;|} links?;
    PublicCampaignWithAssets[] results;
    StandardError[] errors?;
    "PENDING"|"PROCESSING"|"CANCELED"|"COMPLETE" status;
};

public type BatchInputPublicCampaignReadInput record {
    PublicCampaignReadInput[] inputs;
};

public type BatchResponsePublicCampaignWithAssets record {
    string completedAt;
    string requestedAt?;
    string startedAt;
    record {|string...;|} links?;
    PublicCampaignWithAssets[] results;
    "PENDING"|"PROCESSING"|"CANCELED"|"COMPLETE" status;
};

public type ErrorDetail record {
    # A specific category that contains more specific detail about the error
    string subCategory?;
    # The status code associated with the error detail
    string code?;
    # The name of the field or parameter in which the error was found.
    string 'in?;
    # Context about the error condition
    record {|string[]...;|} context?;
    # A human readable message describing the error along with remediation steps where appropriate
    string message;
};

public type BatchResponsePublicCampaignWithErrors record {
    string completedAt;
    int:Signed32 numErrors?;
    string requestedAt?;
    string startedAt;
    record {|string...;|} links?;
    PublicCampaign[] results;
    StandardError[] errors?;
    "PENDING"|"PROCESSING"|"CANCELED"|"COMPLETE" status;
};

public type ForwardPaging record {
    NextPage next?;
};

# Represents the Queries record for the operation: get-/marketing/v3/campaigns/{campaignGuid}/reports/revenue
public type GetMarketingV3CampaignsCampaignguidReportsRevenueQueries record {
    # Allowed values: LINEAR, FIRST_INTERACTION, LAST_INTERACTION, FULL_PATH, U_SHAPED, W_SHAPED, TIME_DECAY, J_SHAPED, INVERSE_J_SHAPED
    # Default value: LINEAR
    string attributionModel?;
    # End date for the report data, formatted as YYYY-MM-DD.
    # Default value: Current date
    string endDate?;
    # The start date for the report data, formatted as YYYY-MM-DD.
    # Default value: 2006-01-01
    string startDate?;
};

# Represents the Queries record for the operation: post-/marketing/v3/campaigns/batch/read
public type PostMarketingV3CampaignsBatchReadQueries record {
    # End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to fetch the metrics associated with the assets for a specified period. If not provided, no asset metrics will be fetched.
    string endDate?;
    # Start date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to fetch the metrics associated with the assets for a specified period. If not provided, no asset metrics will be fetched.
    string startDate?;
    # A comma-separated list of the properties to be returned in the response. If any of the specified properties has empty value on the requested object(s), they will be ignored and not returned in response. If this parameter is empty, the response will include an empty properties map.
    string[] properties?;
};

public type PublicSpendItem record {
    int:Signed32 createdAt;
    decimal amount;
    string name;
    string description?;
    string id;
    int:Signed32 'order;
    int:Signed32 updatedAt;
};

public type BatchResponsePublicCampaign record {
    string completedAt;
    string requestedAt?;
    string startedAt;
    record {|string...;|} links?;
    PublicCampaign[] results;
    "PENDING"|"PROCESSING"|"CANCELED"|"COMPLETE" status;
};

# OAuth2 Refresh Token Grant Configs
public type OAuth2RefreshTokenGrantConfig record {|
    *http:OAuth2RefreshTokenGrantConfig;
    # Refresh URL
    string refreshUrl = "https://api.hubapi.com/oauth/v1/token";
|};

public type PublicCampaignWithAssets record {
    string createdAt;
    record {|CollectionResponsePublicCampaignAsset...;|} assets;
    string id;
    record {|string...;|} properties;
    string updatedAt;
};

# Provides a set of configurations for controlling the behaviours when communicating with a remote HTTP endpoint.
@display {label: "Connection Config"}
public type ConnectionConfig record {|
    # Provides Auth configurations needed when communicating with a remote HTTP endpoint.
    http:BearerTokenConfig|OAuth2RefreshTokenGrantConfig|ApiKeysConfig auth;
    # The HTTP version understood by the client
    http:HttpVersion httpVersion = http:HTTP_2_0;
    # Configurations related to HTTP/1.x protocol
    ClientHttp1Settings http1Settings?;
    # Configurations related to HTTP/2 protocol
    http:ClientHttp2Settings http2Settings?;
    # The maximum time to wait (in seconds) for a response before closing the connection
    decimal timeout = 60;
    # The choice of setting `forwarded`/`x-forwarded` header
    string forwarded = "disable";
    # Configurations associated with request pooling
    http:PoolConfiguration poolConfig?;
    # HTTP caching related configurations
    http:CacheConfig cache?;
    # Specifies the way of handling compression (`accept-encoding`) header
    http:Compression compression = http:COMPRESSION_AUTO;
    # Configurations associated with the behaviour of the Circuit Breaker
    http:CircuitBreakerConfig circuitBreaker?;
    # Configurations associated with retrying
    http:RetryConfig retryConfig?;
    # Configurations associated with inbound response size limits
    http:ResponseLimitConfigs responseLimits?;
    # SSL/TLS-related options
    http:ClientSecureSocket secureSocket?;
    # Proxy server related options
    http:ProxyConfig proxy?;
    # Enables the inbound payload validation functionality which provided by the constraint package. Enabled by default
    boolean validation = true;
|};

public type PublicBudgetTotals record {
    PublicSpendItem[] spendItems;
    decimal budgetTotal?;
    decimal remainingBudget?;
    decimal spendTotal?;
    "AED"|"AFN"|"ALL"|"AMD"|"ANG"|"AOA"|"ARS"|"AUD"|"AWG"|"AZN"|"BAM"|"BBD"|"BDT"|"BGN"|"BHD"|"BIF"|"BMD"|"BND"|"BOB"|"BOV"|"BRL"|"BSD"|"BTN"|"BWP"|"BYN"|"BZD"|"CAD"|"CDF"|"CHE"|"CHF"|"CHW"|"CLF"|"CLP"|"CNY"|"COP"|"COU"|"CRC"|"CUC"|"CUP"|"CVE"|"CZK"|"DJF"|"DKK"|"DOP"|"DZD"|"EGP"|"ERN"|"ETB"|"EUR"|"FJD"|"FKP"|"GBP"|"GEL"|"GHS"|"GIP"|"GMD"|"GNF"|"GTQ"|"GYD"|"HKD"|"HNL"|"HRK"|"HTG"|"HUF"|"IDR"|"ILS"|"INR"|"IQD"|"IRR"|"ISK"|"JMD"|"JOD"|"JPY"|"KES"|"KGS"|"KHR"|"KMF"|"KPW"|"KRW"|"KWD"|"KYD"|"KZT"|"LAK"|"LBP"|"LKR"|"LRD"|"LSL"|"LYD"|"MAD"|"MDL"|"MGA"|"MKD"|"MMK"|"MNT"|"MOP"|"MRU"|"MUR"|"MVR"|"MWK"|"MXN"|"MXV"|"MYR"|"MZN"|"NAD"|"NGN"|"NIO"|"NOK"|"NPR"|"NZD"|"OMR"|"PAB"|"PEN"|"PGK"|"PHP"|"PKR"|"PLN"|"PYG"|"QAR"|"RON"|"RSD"|"RUB"|"RWF"|"SAR"|"SBD"|"SCR"|"SDG"|"SEK"|"SGD"|"SHP"|"SLL"|"SOS"|"SRD"|"SSP"|"STN"|"SVC"|"SYP"|"SZL"|"THB"|"TJS"|"TMT"|"TND"|"TOP"|"TRY"|"TTD"|"TWD"|"TZS"|"UAH"|"UGX"|"USD"|"USN"|"UYI"|"UYU"|"UZS"|"VEF"|"VND"|"VUV"|"WST"|"XAF"|"XAG"|"XAU"|"XBA"|"XBB"|"XBC"|"XBD"|"XCD"|"XDR"|"XOF"|"XPD"|"XPF"|"XPT"|"XSU"|"XUA"|"YER"|"ZAR"|"ZMW"|"ZWL" currencyCode;
    PublicBudgetItem[] budgetItems;
};

public type CollectionResponsePublicCampaignAsset record {
    Paging paging?;
    PublicCampaignAsset[] results;
};

public type PublicCampaignDeleteInput record {
    string id;
};

public type BatchInputPublicCampaignDeleteInput record {
    PublicCampaignDeleteInput[] inputs;
};

public type PublicCampaignInput record {
    record {|string...;|} properties;
};

public type MetricsCounters record {
    int:Signed32 sessions;
    int:Signed32 newContactsFirstTouch;
    int:Signed32 influencedContacts;
    int:Signed32 newContactsLastTouch;
};

public type PublicBudgetItem record {
    int:Signed32 createdAt;
    decimal amount;
    string name;
    string description?;
    string id;
    int:Signed32 'order;
    int:Signed32 updatedAt;
};

# Represents the Queries record for the operation: get-/marketing/v3/campaigns/{campaignGuid}
public type GetMarketingV3CampaignsCampaignguidQueries record {
    #  End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to fetch the metrics associated with the assets for a specified period.
    # If not provided, no asset metrics will be fetched.
    string endDate?;
    # Start date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to fetch the metrics associated with the assets for a specified period.
    # If not provided, no asset metrics will be fetched.
    string startDate?;
    # A comma-separated list of the properties to be returned in the response. If any of the specified properties has empty value on the requested object, they will be ignored and not returned in response. If this parameter is empty, the response will include an empty properties map.
    string[] properties?;
};

public type CollectionResponseWithTotalPublicCampaignForwardPaging record {
    int:Signed32 total;
    ForwardPaging paging?;
    PublicCampaign[] results;
};

public type BatchInputPublicCampaignInput record {
    PublicCampaignInput[] inputs;
};

public type Paging record {
    NextPage next?;
    PreviousPage prev?;
};

# Proxy server configurations to be used with the HTTP client endpoint.
public type ProxyConfig record {|
    # Host name of the proxy server
    string host = "";
    # Proxy server port
    int port = 0;
    # Proxy server username
    string userName = "";
    # Proxy server password
    @display {label: "", kind: "password"}
    string password = "";
|};

# Represents the Queries record for the operation: get-/marketing/v3/campaigns/{campaignGuid}/reports/metrics
public type GetMarketingV3CampaignsCampaignguidReportsMetricsQueries record {
    # End date for the report data, formatted as YYYY-MM-DD.
    # Default value: Current date
    string endDate?;
    # The start date for the report data, formatted as YYYY-MM-DD.
    # Default value: 2006-01-01
    string startDate?;
};

public type CollectionResponseContactReferenceForwardPaging record {
    ForwardPaging paging?;
    ContactReference[] results;
};

# Represents the Queries record for the operation: get-/marketing/v3/campaigns/{campaignGuid}/assets/{assetType}
public type GetMarketingV3CampaignsCampaignguidAssetsAssettypeQueries record {
    # End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to fetch the metrics associated with the assets for a specified period.
    # If not provided, no asset metrics will be fetched.
    string endDate?;
    # The maximum number of results to return.
    # Default: 10
    string 'limit?;
    # A cursor for pagination. If provided, the results will start after the given cursor.
    # Example: NTI1Cg%3D%3D
    string after?;
    # Start date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to fetch the metrics associated with the assets for a specified period.
    # If not provided, no asset metrics will be fetched.
    string startDate?;
};

public type PublicCampaignAsset record {
    string name?;
    string id;
    record {||} metrics;
};

public type RevenueAttributionAggregate record {
    int:Signed32 contactsNumber?;
    decimal dealAmount?;
    int:Signed32 dealsNumber?;
    decimal revenueAmount?;
    "AED"|"AFN"|"ALL"|"AMD"|"ANG"|"AOA"|"ARS"|"AUD"|"AWG"|"AZN"|"BAM"|"BBD"|"BDT"|"BGN"|"BHD"|"BIF"|"BMD"|"BND"|"BOB"|"BOV"|"BRL"|"BSD"|"BTN"|"BWP"|"BYN"|"BZD"|"CAD"|"CDF"|"CHE"|"CHF"|"CHW"|"CLF"|"CLP"|"CNY"|"COP"|"COU"|"CRC"|"CUC"|"CUP"|"CVE"|"CZK"|"DJF"|"DKK"|"DOP"|"DZD"|"EGP"|"ERN"|"ETB"|"EUR"|"FJD"|"FKP"|"GBP"|"GEL"|"GHS"|"GIP"|"GMD"|"GNF"|"GTQ"|"GYD"|"HKD"|"HNL"|"HRK"|"HTG"|"HUF"|"IDR"|"ILS"|"INR"|"IQD"|"IRR"|"ISK"|"JMD"|"JOD"|"JPY"|"KES"|"KGS"|"KHR"|"KMF"|"KPW"|"KRW"|"KWD"|"KYD"|"KZT"|"LAK"|"LBP"|"LKR"|"LRD"|"LSL"|"LYD"|"MAD"|"MDL"|"MGA"|"MKD"|"MMK"|"MNT"|"MOP"|"MRU"|"MUR"|"MVR"|"MWK"|"MXN"|"MXV"|"MYR"|"MZN"|"NAD"|"NGN"|"NIO"|"NOK"|"NPR"|"NZD"|"OMR"|"PAB"|"PEN"|"PGK"|"PHP"|"PKR"|"PLN"|"PYG"|"QAR"|"RON"|"RSD"|"RUB"|"RWF"|"SAR"|"SBD"|"SCR"|"SDG"|"SEK"|"SGD"|"SHP"|"SLL"|"SOS"|"SRD"|"SSP"|"STN"|"SVC"|"SYP"|"SZL"|"THB"|"TJS"|"TMT"|"TND"|"TOP"|"TRY"|"TTD"|"TWD"|"TZS"|"UAH"|"UGX"|"USD"|"USN"|"UYI"|"UYU"|"UZS"|"VEF"|"VND"|"VUV"|"WST"|"XAF"|"XAG"|"XAU"|"XBA"|"XBB"|"XBC"|"XBD"|"XCD"|"XDR"|"XOF"|"XPD"|"XPF"|"XPT"|"XSU"|"XUA"|"YER"|"ZAR"|"ZMW"|"ZWL" currencyCode?;
};

# Represents the Queries record for the operation: get-/marketing/v3/campaigns/{campaignGuid}/reports/contacts/{contactType}
public type GetMarketingV3CampaignsCampaignguidReportsContactsContacttypeQueries record {
    # End date for the report data, formatted as YYYY-MM-DD.
    # Default value: Current date
    string endDate?;
    # Limit for the number of contacts to fetch
    # Default: 100
    int:Signed32 'limit?;
    # A cursor for pagination. If provided, the results will start after the given cursor.
    # Example: NTI1Cg%3D%3D
    string after?;
    # The start date for the report data, formatted as YYYY-MM-DD.
    # Default value: 2006-01-01
    string startDate?;
};

public type BatchInputPublicCampaignBatchUpdateItem record {
    PublicCampaignBatchUpdateItem[] inputs;
};

# Provides settings related to HTTP/1.x protocol.
public type ClientHttp1Settings record {|
    # Specifies whether to reuse a connection for multiple requests
    http:KeepAlive keepAlive = http:KEEPALIVE_AUTO;
    # The chunking behaviour of the request
    http:Chunking chunking = http:CHUNKING_AUTO;
    # Proxy server related options
    ProxyConfig proxy?;
|};

public type PreviousPage record {
    string before;
    string link?;
};

# Represents the Queries record for the operation: get-/marketing/v3/campaigns/
public type GetMarketingV3CampaignsQueries record {
    # The maximum number of results to return. Allowed values range from 1 to 100
    # Default: 50
    int:Signed32 'limit?;
    # A filter to return campaigns whose names contain the specified substring. This allows partial matching of campaign names, returning all campaigns that include the given substring in their name. If this parameter is not provided, the search will return all campaigns
    string name?;
    # The field by which to sort the results. Allowed values are hs_name, createdAt, updatedAt. An optional '-' before the property name can denote descending order
    # Default: hs_name
    string sort?;
    # A cursor for pagination. If provided, the results will start after the given cursor.
    # Example: NTI1Cg%3D%3D
    string after?;
    # A comma-separated list of the properties to be returned in the response. If any of the specified properties has empty value on the requested object(s), they will be ignored and not returned in response. If this parameter is empty, the response will include an empty properties map
    string[] properties?;
};

public type ContactReference record {
    string id;
};

public type NextPage record {
    string link?;
    string after;
};

# Provides API key configurations needed when communicating with a remote HTTP endpoint.
#
# + private\-app - field description
public type ApiKeysConfig record {|
    string private\-app;
|};

public type PublicCampaign record {
    string createdAt;
    string id;
    record {|string...;|} properties;
    string updatedAt;
};