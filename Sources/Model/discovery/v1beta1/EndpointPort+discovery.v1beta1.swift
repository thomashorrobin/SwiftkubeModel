//
// Copyright 2020 Iskandar Abudiab (iabudiab.dev)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.18.9
/// discovery.v1beta1.EndpointPort
///

import Foundation

public extension discovery.v1beta1 {

	///
	/// EndpointPort represents a Port used by an EndpointSlice
	///
	struct EndpointPort: KubernetesResource {
		///
		/// The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.
		///
		public var appProtocol: String?
		///
		/// The name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string.
		///
		public var name: String?
		///
		/// The port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.
		///
		public var port: Int32?
		///
		/// The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
		///
		public var `protocol`: String?
		///
		/// Default memberwise initializer
		///
		public init(
			appProtocol: String? = nil,
			name: String? = nil,
			port: Int32? = nil,
			`protocol`: String? = nil
		) {
			self.appProtocol = appProtocol
			self.name = name
			self.port = port
			self.`protocol` = `protocol`
		}
	}
}

///
/// Codable conformance
///
extension discovery.v1beta1.EndpointPort {

	private enum CodingKeys: String, CodingKey {
		case appProtocol = "appProtocol"
		case name = "name"
		case port = "port"
		case `protocol` = "protocol"
	}

}
