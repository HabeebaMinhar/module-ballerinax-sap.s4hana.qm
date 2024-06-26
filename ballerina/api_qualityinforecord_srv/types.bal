// AUTO-GENERATED FILE. DO NOT MODIFY.
// This file is auto-generated by the Ballerina OpenAPI tool.

// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.org).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/constraint;
import ballerina/http;

public type CreateQualityFirstArticleInspection record {
    # Material Number
    @constraint:String {maxLength: 18}
    string Material;
    # Quality Info Record in Procurement Internal ID
    @constraint:String {maxLength: 6}
    string QltyInProcmtIntID;
    # First Article Inspection Number in Quality Info Record
    @constraint:String {maxLength: 6}
    string QltyInProcmt1stArticleInsp;
    # Purchase Order Number
    string? PurchaseOrder?;
    # Purchase order item number
    string? PurchaseOrderItem?;
    string? InspLotUsageDecisionValuation?;
    CreateQualityInProcurement to_QltyInProcurement?;
};

public type QltyInProcurementOfQualityFirstArticleInspectionExpandOptions ("to_QltyFirstArticleInsp")[];

public type QualityInProcurementWrapper record {
    QualityInProcurement d?;
};

public type CollectionOfQualityInProcurement record {
    count __count?;
    QualityInProcurement[] results?;
};

public type QualityFirstArticleInspection record {
    # Material Number
    @constraint:String {maxLength: 18}
    string Material?;
    # Quality Info Record in Procurement Internal ID
    @constraint:String {maxLength: 6}
    string QltyInProcmtIntID?;
    # First Article Inspection Number in Quality Info Record
    @constraint:String {maxLength: 6}
    string QltyInProcmt1stArticleInsp?;
    # Purchase Order Number
    string? PurchaseOrder?;
    # Purchase order item number
    string? PurchaseOrderItem?;
    string? InspLotUsageDecisionValuation?;
    QualityInProcurement to_QltyInProcurement?;
};

# Represents the Queries record for the operation: getQltyInProcurementOfQualityFirstArticleInspection
public type GetQltyInProcurementOfQualityFirstArticleInspectionQueries record {
    # Expand related entities, see [Expand](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=63)
    QltyInProcurementOfQualityFirstArticleInspectionExpandOptions \$expand?;
    # Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    QltyInProcurementOfQualityFirstArticleInspectionSelectOptions \$select?;
};

public type UpdateQualityInProcurement record {
    # Supplier's Account Number
    string? Supplier?;
    string? Plant?;
    string? MaterialRevisionLevel?;
    # Date Until Which the Release Is Valid
    string? QltyInProcmtReleaseValidTo?;
    # Base Unit of Measure for the Material
    string? BaseUnit?;
    # Quantity Released for the Material
    string? ReleasedQuantity?;
    # Blocking Reason
    string? BlockReason?;
    # Function That Will Be Blocked
    string? ProcurementBlock?;
    string? QltyInProcmtRelQtyIsActive?;
    # Inspection Control in the QM Info Record
    string? QltyInProcmtInspControl?;
    # Production Part Approval Is Required
    string? ProdnPieceApprovalIsRequired?;
    # Production Part Approval Identifier
    string? ProductionPieceApproval?;
    # Production Part Approval for Part Submission Warrant
    string? ProductionPieceApprovalLevel?;
    # Production Part Approval Status
    string? ProductionPieceApprovalStatus?;
    string? IsDeleted?;
    # Supplier's QM System
    string? QualityManagementSystem?;
    # Validity Date of Certification
    string? QltyInProcmtCertfnValidTo?;
    # Inspection Type for Insp. Lot Origin (Source Inspection)
    string? InspectionLotType?;
    # Lot Creation Lead Time (in Days) for Source Inspection
    int? QltyInProcmtLotCrtnLeadTime?;
    # Control of Certificate Receipt
    string? QltyInProcmtCertificateCtrl?;
    string? QltyInProcmtLongText?;
};

public type CreateQualityInProcurement_to_QltyFirstArticleInsp record {
    CreateQualityFirstArticleInspection[] results?;
};

public type CollectionOfQualityInProcurementWrapper record {
    CollectionOfQualityInProcurement d?;
};

public type CollectionOfQualityFirstArticleInspectionWrapper record {
    CollectionOfQualityFirstArticleInspection d?;
};

# Represents the Queries record for the operation: listQualityInProcurements
public type ListQualityInProcurementsQueries record {
    # Skip the first n items, see [Paging - Skip](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    int \$skip?;
    # Show only the first n items, see [Paging - Top](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=66)
    int \$top?;
    # Filter items by property values, see [Filtering](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=64)
    string \$filter?;
    # Order items by property values, see [Sorting](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    QualityInProcurementOrderByOptions \$orderby?;
    # Expand related entities, see [Expand](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=63)
    QualityInProcurementExpandOptions \$expand?;
    # Include count of items, see [Inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67)
    "allpages"|"none" \$inlinecount?;
    # Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    QualityInProcurementSelectOptions \$select?;
};

public type QltyFirstArticleInspOfQualityInProcurementSelectOptions ("Material"|"QltyInProcmtIntID"|"QltyInProcmt1stArticleInsp"|"PurchaseOrder"|"PurchaseOrderItem"|"InspLotUsageDecisionValuation"|"to_QltyInProcurement")[];

public type Modified\ QualityFirstArticleInspectionType record {
    UpdateQualityFirstArticleInspection d?;
};

public type CollectionOfQualityFirstArticleInspection record {
    count __count?;
    QualityFirstArticleInspection[] results?;
};

public type QltyFirstArticleInspOfQualityInProcurementExpandOptions ("to_QltyInProcurement")[];

# Represents the Queries record for the operation: listQualityFirstArticleInspections
public type ListQualityFirstArticleInspectionsQueries record {
    # Skip the first n items, see [Paging - Skip](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    int \$skip?;
    # Show only the first n items, see [Paging - Top](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=66)
    int \$top?;
    # Filter items by property values, see [Filtering](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=64)
    string \$filter?;
    # Order items by property values, see [Sorting](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    QualityFirstArticleInspectionOrderByOptions \$orderby?;
    # Expand related entities, see [Expand](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=63)
    QualityFirstArticleInspectionExpandOptions \$expand?;
    # Include count of items, see [Inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67)
    "allpages"|"none" \$inlinecount?;
    # Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    QualityFirstArticleInspectionSelectOptions \$select?;
};

public type QualityInProcurement record {
    # Material Number
    @constraint:String {maxLength: 18}
    string Material?;
    # Quality Info Record in Procurement Internal ID
    @constraint:String {maxLength: 6}
    string QltyInProcmtIntID?;
    # Supplier's Account Number
    string? Supplier?;
    string? Plant?;
    string? MaterialRevisionLevel?;
    # Date Until Which the Release Is Valid
    string? QltyInProcmtReleaseValidTo?;
    # Base Unit of Measure for the Material
    string? BaseUnit?;
    # Quantity Released for the Material
    string? ReleasedQuantity?;
    # Blocking Reason
    string? BlockReason?;
    # Function That Will Be Blocked
    string? ProcurementBlock?;
    string? QltyInProcmtRelQtyIsActive?;
    # Inspection Control in the QM Info Record
    string? QltyInProcmtInspControl?;
    # Production Part Approval Is Required
    string? ProdnPieceApprovalIsRequired?;
    # Production Part Approval Identifier
    string? ProductionPieceApproval?;
    # Production Part Approval for Part Submission Warrant
    string? ProductionPieceApprovalLevel?;
    # Production Part Approval Status
    string? ProductionPieceApprovalStatus?;
    string? IsDeleted?;
    # Supplier's QM System
    string? QualityManagementSystem?;
    # Validity Date of Certification
    string? QltyInProcmtCertfnValidTo?;
    # Inspection Type for Insp. Lot Origin (Source Inspection)
    string? InspectionLotType?;
    # Lot Creation Lead Time (in Days) for Source Inspection
    int? QltyInProcmtLotCrtnLeadTime?;
    # Control of Certificate Receipt
    string? QltyInProcmtCertificateCtrl?;
    string? QltyInProcmtLongText?;
    QualityInProcurement_to_QltyFirstArticleInsp to_QltyFirstArticleInsp?;
};

public type QltyInProcurementOfQualityFirstArticleInspectionSelectOptions ("Material"|"QltyInProcmtIntID"|"Supplier"|"Plant"|"MaterialRevisionLevel"|"QltyInProcmtReleaseValidTo"|"BaseUnit"|"ReleasedQuantity"|"BlockReason"|"ProcurementBlock"|"QltyInProcmtRelQtyIsActive"|"QltyInProcmtInspControl"|"ProdnPieceApprovalIsRequired"|"ProductionPieceApproval"|"ProductionPieceApprovalLevel"|"ProductionPieceApprovalStatus"|"IsDeleted"|"QualityManagementSystem"|"QltyInProcmtCertfnValidTo"|"InspectionLotType"|"QltyInProcmtLotCrtnLeadTime"|"QltyInProcmtCertificateCtrl"|"QltyInProcmtLongText"|"to_QltyFirstArticleInsp")[];

# OAuth2 Refresh Token Grant Configs
public type OAuth2RefreshTokenGrantConfig record {|
    *http:OAuth2RefreshTokenGrantConfig;
    # Refresh URL
    string refreshUrl = "https://{host}:{port}";
|};

public type QltyFirstArticleInspOfQualityInProcurementOrderByOptions ("Material"|"Material desc"|"QltyInProcmtIntID"|"QltyInProcmtIntID desc"|"QltyInProcmt1stArticleInsp"|"QltyInProcmt1stArticleInsp desc"|"PurchaseOrder"|"PurchaseOrder desc"|"PurchaseOrderItem"|"PurchaseOrderItem desc"|"InspLotUsageDecisionValuation"|"InspLotUsageDecisionValuation desc")[];

# Provides a set of configurations for controlling the behaviours when communicating with a remote HTTP endpoint.
@display {label: "Connection Config"}
public type ConnectionConfig record {|
    # Configurations related to client authentication
    http:BearerTokenConfig|OAuth2RefreshTokenGrantConfig|http:CredentialsConfig auth;
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

public type QualityInProcurementSelectOptions ("Material"|"QltyInProcmtIntID"|"Supplier"|"Plant"|"MaterialRevisionLevel"|"QltyInProcmtReleaseValidTo"|"BaseUnit"|"ReleasedQuantity"|"BlockReason"|"ProcurementBlock"|"QltyInProcmtRelQtyIsActive"|"QltyInProcmtInspControl"|"ProdnPieceApprovalIsRequired"|"ProductionPieceApproval"|"ProductionPieceApprovalLevel"|"ProductionPieceApprovalStatus"|"IsDeleted"|"QualityManagementSystem"|"QltyInProcmtCertfnValidTo"|"InspectionLotType"|"QltyInProcmtLotCrtnLeadTime"|"QltyInProcmtCertificateCtrl"|"QltyInProcmtLongText"|"to_QltyFirstArticleInsp")[];

# Represents the Queries record for the operation: getQualityFirstArticleInspection
public type GetQualityFirstArticleInspectionQueries record {
    # Expand related entities, see [Expand](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=63)
    QualityFirstArticleInspectionExpandOptions \$expand?;
    # Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    QualityFirstArticleInspectionSelectOptions \$select?;
};

public type QualityInProcurementExpandOptions ("to_QltyFirstArticleInsp")[];

public type QualityInProcurement_to_QltyFirstArticleInsp record {
    QualityFirstArticleInspection[] results?;
};

public type QualityFirstArticleInspectionExpandOptions ("to_QltyInProcurement")[];

# The number of entities in the collection. Available when using the [$inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67) query option.
public type count string;

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

public type QualityInProcurementOrderByOptions ("Material"|"Material desc"|"QltyInProcmtIntID"|"QltyInProcmtIntID desc"|"Supplier"|"Supplier desc"|"Plant"|"Plant desc"|"MaterialRevisionLevel"|"MaterialRevisionLevel desc"|"QltyInProcmtReleaseValidTo"|"QltyInProcmtReleaseValidTo desc"|"BaseUnit"|"BaseUnit desc"|"ReleasedQuantity"|"ReleasedQuantity desc"|"BlockReason"|"BlockReason desc"|"ProcurementBlock"|"ProcurementBlock desc"|"QltyInProcmtRelQtyIsActive"|"QltyInProcmtRelQtyIsActive desc"|"QltyInProcmtInspControl"|"QltyInProcmtInspControl desc"|"ProdnPieceApprovalIsRequired"|"ProdnPieceApprovalIsRequired desc"|"ProductionPieceApproval"|"ProductionPieceApproval desc"|"ProductionPieceApprovalLevel"|"ProductionPieceApprovalLevel desc"|"ProductionPieceApprovalStatus"|"ProductionPieceApprovalStatus desc"|"IsDeleted"|"IsDeleted desc"|"QualityManagementSystem"|"QualityManagementSystem desc"|"QltyInProcmtCertfnValidTo"|"QltyInProcmtCertfnValidTo desc"|"InspectionLotType"|"InspectionLotType desc"|"QltyInProcmtLotCrtnLeadTime"|"QltyInProcmtLotCrtnLeadTime desc"|"QltyInProcmtCertificateCtrl"|"QltyInProcmtCertificateCtrl desc")[];

# Represents the Queries record for the operation: getQualityInProcurement
public type GetQualityInProcurementQueries record {
    # Expand related entities, see [Expand](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=63)
    QualityInProcurementExpandOptions \$expand?;
    # Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    QualityInProcurementSelectOptions \$select?;
};

public type UpdateQualityFirstArticleInspection record {
    # Purchase Order Number
    string? PurchaseOrder?;
    # Purchase order item number
    string? PurchaseOrderItem?;
    string? InspLotUsageDecisionValuation?;
};

public type QualityFirstArticleInspectionSelectOptions ("Material"|"QltyInProcmtIntID"|"QltyInProcmt1stArticleInsp"|"PurchaseOrder"|"PurchaseOrderItem"|"InspLotUsageDecisionValuation"|"to_QltyInProcurement")[];

# Provides settings related to HTTP/1.x protocol.
public type ClientHttp1Settings record {|
    # Specifies whether to reuse a connection for multiple requests
    http:KeepAlive keepAlive = http:KEEPALIVE_AUTO;
    # The chunking behaviour of the request
    http:Chunking chunking = http:CHUNKING_AUTO;
    # Proxy server related options
    ProxyConfig proxy?;
|};

public type QualityFirstArticleInspectionOrderByOptions ("Material"|"Material desc"|"QltyInProcmtIntID"|"QltyInProcmtIntID desc"|"QltyInProcmt1stArticleInsp"|"QltyInProcmt1stArticleInsp desc"|"PurchaseOrder"|"PurchaseOrder desc"|"PurchaseOrderItem"|"PurchaseOrderItem desc"|"InspLotUsageDecisionValuation"|"InspLotUsageDecisionValuation desc")[];

public type QualityFirstArticleInspectionWrapper record {
    QualityFirstArticleInspection d?;
};

# Represents the Queries record for the operation: listQltyFirstArticleInspsOfQualityInProcurement
public type ListQltyFirstArticleInspsOfQualityInProcurementQueries record {
    # Skip the first n items, see [Paging - Skip](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    int \$skip?;
    # Show only the first n items, see [Paging - Top](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=66)
    int \$top?;
    # Filter items by property values, see [Filtering](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=64)
    string \$filter?;
    # Order items by property values, see [Sorting](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    QltyFirstArticleInspOfQualityInProcurementOrderByOptions \$orderby?;
    # Expand related entities, see [Expand](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=63)
    QltyFirstArticleInspOfQualityInProcurementExpandOptions \$expand?;
    # Include count of items, see [Inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67)
    "allpages"|"none" \$inlinecount?;
    # Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    QltyFirstArticleInspOfQualityInProcurementSelectOptions \$select?;
};

public type Modified\ QualityInProcurementType record {
    UpdateQualityInProcurement d?;
};

public type CreateQualityInProcurement record {
    # Material Number
    @constraint:String {maxLength: 18}
    string Material;
    # Quality Info Record in Procurement Internal ID
    @constraint:String {maxLength: 6}
    string QltyInProcmtIntID;
    # Supplier's Account Number
    string? Supplier?;
    string? Plant?;
    string? MaterialRevisionLevel?;
    # Date Until Which the Release Is Valid
    string? QltyInProcmtReleaseValidTo?;
    # Base Unit of Measure for the Material
    string? BaseUnit?;
    # Quantity Released for the Material
    string? ReleasedQuantity?;
    # Blocking Reason
    string? BlockReason?;
    # Function That Will Be Blocked
    string? ProcurementBlock?;
    string? QltyInProcmtRelQtyIsActive?;
    # Inspection Control in the QM Info Record
    string? QltyInProcmtInspControl?;
    # Production Part Approval Is Required
    string? ProdnPieceApprovalIsRequired?;
    # Production Part Approval Identifier
    string? ProductionPieceApproval?;
    # Production Part Approval for Part Submission Warrant
    string? ProductionPieceApprovalLevel?;
    # Production Part Approval Status
    string? ProductionPieceApprovalStatus?;
    string? IsDeleted?;
    # Supplier's QM System
    string? QualityManagementSystem?;
    # Validity Date of Certification
    string? QltyInProcmtCertfnValidTo?;
    # Inspection Type for Insp. Lot Origin (Source Inspection)
    string? InspectionLotType?;
    # Lot Creation Lead Time (in Days) for Source Inspection
    int? QltyInProcmtLotCrtnLeadTime?;
    # Control of Certificate Receipt
    string? QltyInProcmtCertificateCtrl?;
    string? QltyInProcmtLongText?;
    CreateQualityInProcurement_to_QltyFirstArticleInsp to_QltyFirstArticleInsp?;
};
