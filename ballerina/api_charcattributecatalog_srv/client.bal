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

import ballerina/http;
import ballerinax/sap;

#

#

# The catalog data that is read with this service consists of plant-specific selected sets with their codes that are used to record inspection results for qualitative characteristics, for example, the codes 01 (Smooth) and 02 (Rough) for the characteristic ***Surface***.
public isolated client class Client {
    final sap:Client clientEp;

    # Gets invoked to initialize the `connector`.
    #
    # + config - The configurations to be used when initializing the `connector` 
    # + serviceUrl - URL of the target service 
    # + return - An error if connector initialization failed 
    public isolated function init(ConnectionConfig config, string hostname, int port = 443) returns error? {
        string serviceUrl = string `https://${hostname}:${port}/sap/opu/odata/sap/API_CHARCATTRIBUTECATALOG_SRV`;
        http:ClientConfiguration httpClientConfig = {auth: config.auth, httpVersion: config.httpVersion, timeout: config.timeout, forwarded: config.forwarded, poolConfig: config.poolConfig, compression: config.compression, circuitBreaker: config.circuitBreaker, retryConfig: config.retryConfig, validation: config.validation};
        do {
            if config.http1Settings is ClientHttp1Settings {
                ClientHttp1Settings settings = check config.http1Settings.ensureType(ClientHttp1Settings);
                httpClientConfig.http1Settings = {...settings};
            }
            if config.http2Settings is http:ClientHttp2Settings {
                httpClientConfig.http2Settings = check config.http2Settings.ensureType(http:ClientHttp2Settings);
            }
            if config.cache is http:CacheConfig {
                httpClientConfig.cache = check config.cache.ensureType(http:CacheConfig);
            }
            if config.responseLimits is http:ResponseLimitConfigs {
                httpClientConfig.responseLimits = check config.responseLimits.ensureType(http:ResponseLimitConfigs);
            }
            if config.secureSocket is http:ClientSecureSocket {
                httpClientConfig.secureSocket = check config.secureSocket.ensureType(http:ClientSecureSocket);
            }
            if config.proxy is http:ProxyConfig {
                httpClientConfig.proxy = check config.proxy.ensureType(http:ProxyConfig);
            }
        }
        sap:Client httpEp = check new (serviceUrl, httpClientConfig);
        self.clientEp = httpEp;
        return;
    }

    # Reads a specific selected set of catalog type Characteristic Attributes.
    #
    # + SelectedCodeSetPlant - Plant
    # + SelectedCodeSet - Selected Set
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entity 
    remote isolated function getA_CharcAttribSeldCodeSet(string SelectedCodeSetPlant, string SelectedCodeSet, map<string|string[]> headers = {}, *GetA_CharcAttribSeldCodeSetQueries queries) returns A_CharcAttribSeldCodeSetWrapper|error {
        string resourcePath = string `/A_CharcAttribSeldCodeSet(SelectedCodeSetPlant='${getEncodedUri(SelectedCodeSetPlant)}',SelectedCodeSet='${getEncodedUri(SelectedCodeSet)}')`;
        map<Encoding> queryParamEncoding = {"$select": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Reads a specific selected set code of catalog type Characteristic Attributes.
    #
    # + SelectedCodeSetPlant - Plant
    # + SelectedCodeSet - Selected Set
    # + CharacteristicAttributeCodeGrp - Code Group
    # + CharacteristicAttributeCode - Code
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entity 
    remote isolated function getA_CharcAttribSeldSetCode(string SelectedCodeSetPlant, string SelectedCodeSet, string CharacteristicAttributeCodeGrp, string CharacteristicAttributeCode, map<string|string[]> headers = {}, *GetA_CharcAttribSeldSetCodeQueries queries) returns A_CharcAttribSeldSetCodeWrapper|error {
        string resourcePath = string `/A_CharcAttribSeldSetCode(SelectedCodeSetPlant='${getEncodedUri(SelectedCodeSetPlant)}',SelectedCodeSet='${getEncodedUri(SelectedCodeSet)}',CharacteristicAttributeCodeGrp='${getEncodedUri(CharacteristicAttributeCodeGrp)}',CharacteristicAttributeCode='${getEncodedUri(CharacteristicAttributeCode)}')`;
        map<Encoding> queryParamEncoding = {"$select": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Reads a specific selected set code text of catalog type Characteristic Attributes in a specific language.
    #
    # + SelectedCodeSetPlant - Plant
    # + SelectedCodeSet - Selected Set
    # + CharacteristicAttributeCodeGrp - Code Group
    # + CharacteristicAttributeCode - Code
    # + Language - Language Key
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entity 
    remote isolated function getA_CharcAttribSeldSetCodeT(string SelectedCodeSetPlant, string SelectedCodeSet, string CharacteristicAttributeCodeGrp, string CharacteristicAttributeCode, string Language, map<string|string[]> headers = {}, *GetA_CharcAttribSeldSetCodeTQueries queries) returns A_CharcAttribSeldSetCodeTWrapper|error {
        string resourcePath = string `/A_CharcAttribSeldSetCodeT(SelectedCodeSetPlant='${getEncodedUri(SelectedCodeSetPlant)}',SelectedCodeSet='${getEncodedUri(SelectedCodeSet)}',CharacteristicAttributeCodeGrp='${getEncodedUri(CharacteristicAttributeCodeGrp)}',CharacteristicAttributeCode='${getEncodedUri(CharacteristicAttributeCode)}',Language='${getEncodedUri(Language)}')`;
        map<Encoding> queryParamEncoding = {"$select": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Reads a specific selected set text of catalog type Characteristic Attributes in a specific language.
    #
    # + SelectedCodeSetPlant - Plant
    # + SelectedCodeSet - Selected Set
    # + Language - Language Key
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entity 
    remote isolated function getA_CharcAttribSeldSetT(string SelectedCodeSetPlant, string SelectedCodeSet, string Language, map<string|string[]> headers = {}, *GetA_CharcAttribSeldSetTQueries queries) returns A_CharcAttribSeldSetTWrapper|error {
        string resourcePath = string `/A_CharcAttribSeldSetT(SelectedCodeSetPlant='${getEncodedUri(SelectedCodeSetPlant)}',SelectedCodeSet='${getEncodedUri(SelectedCodeSet)}',Language='${getEncodedUri(Language)}')`;
        map<Encoding> queryParamEncoding = {"$select": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Reads all selected sets of catalog type Characteristic Attributes.
    #
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entities 
    remote isolated function listA_CharcAttribSeldCodeSets(map<string|string[]> headers = {}, *ListA_CharcAttribSeldCodeSetsQueries queries) returns CollectionOfA_CharcAttribSeldCodeSetWrapper|error {
        string resourcePath = string `/A_CharcAttribSeldCodeSet`;
        map<Encoding> queryParamEncoding = {"$orderby": {style: FORM, explode: false}, "$select": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Reads all selected set code texts of catalog type Characteristic Attributes.
    #
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entities 
    remote isolated function listA_CharcAttribSeldSetCodeTs(map<string|string[]> headers = {}, *ListA_CharcAttribSeldSetCodeTsQueries queries) returns CollectionOfA_CharcAttribSeldSetCodeTWrapper|error {
        string resourcePath = string `/A_CharcAttribSeldSetCodeT`;
        map<Encoding> queryParamEncoding = {"$orderby": {style: FORM, explode: false}, "$select": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Reads all selected set codes and code groups of catalog type Characteristic Attributes.
    #
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entities 
    remote isolated function listA_CharcAttribSeldSetCodes(map<string|string[]> headers = {}, *ListA_CharcAttribSeldSetCodesQueries queries) returns CollectionOfA_CharcAttribSeldSetCodeWrapper|error {
        string resourcePath = string `/A_CharcAttribSeldSetCode`;
        map<Encoding> queryParamEncoding = {"$orderby": {style: FORM, explode: false}, "$select": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Reads all selected set texts of catalog type Characteristic Attributes.
    #
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entities 
    remote isolated function listA_CharcAttribSeldSetTs(map<string|string[]> headers = {}, *ListA_CharcAttribSeldSetTsQueries queries) returns CollectionOfA_CharcAttribSeldSetTWrapper|error {
        string resourcePath = string `/A_CharcAttribSeldSetT`;
        map<Encoding> queryParamEncoding = {"$orderby": {style: FORM, explode: false}, "$select": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Send a group of requests
    #
    # + headers - Headers to be sent with the request 
    # + request - Batch request 
    # + return - Batch response 
    remote isolated function performBatchOperation(http:Request request, map<string|string[]> headers = {}) returns http:Response|error {
        string resourcePath = string `/$batch`;
        // TODO: Update the request as needed;
        return self.clientEp->post(resourcePath, request, headers);
    }
}