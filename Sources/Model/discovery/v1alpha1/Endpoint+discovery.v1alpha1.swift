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

import Foundation

public extension discovery.v1alpha1 {

	///
	/// Endpoint represents a single logical "backend" implementing a service.
	///
	struct Endpoint: KubernetesResource {
		///
		/// addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. This allows for cases like dual-stack (IPv4 and IPv6) networking. Consumers (e.g. kube-proxy) must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100.
		///
		public var addresses: [String]
		///
		/// conditions contains information about the current status of the endpoint.
		///
		public var conditions: discovery.v1alpha1.EndpointConditions?
		///
		/// hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must pass DNS Label (RFC 1123) validation.
		///
		public var hostname: String?
		///
		/// targetRef is a reference to a Kubernetes object that represents this endpoint.
		///
		public var targetRef: core.v1.ObjectReference?
		///
		/// topology contains arbitrary topology information associated with the endpoint. These key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node
		///   where the endpoint is located. This should match the corresponding
		///   node label.
		/// * topology.kubernetes.io/zone: the value indicates the zone where the
		///   endpoint is located. This should match the corresponding node label.
		/// * topology.kubernetes.io/region: the value indicates the region where the
		///   endpoint is located. This should match the corresponding node label.
		///
		public var topology: [String: String]?
		///
		/// Default memberwise initializer
		///
		public init(
			addresses: [String],
			conditions: discovery.v1alpha1.EndpointConditions? = nil,
			hostname: String? = nil,
			targetRef: core.v1.ObjectReference? = nil,
			topology: [String: String]? = nil
		) {
			self.addresses = addresses
			self.conditions = conditions
			self.hostname = hostname
			self.targetRef = targetRef
			self.topology = topology
		}
	}
}

///
/// Codable conformance
///
extension discovery.v1alpha1.Endpoint {

	private enum CodingKeys: String, CodingKey {
		case addresses = "addresses"
		case conditions = "conditions"
		case hostname = "hostname"
		case targetRef = "targetRef"
		case topology = "topology"
	}

}

