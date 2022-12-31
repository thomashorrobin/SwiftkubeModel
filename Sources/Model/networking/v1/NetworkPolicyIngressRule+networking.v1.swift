//
// Copyright 2020 Swiftkube Project
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
/// Kubernetes v1.24.8
/// networking.v1.NetworkPolicyIngressRule
///

import Foundation

// MARK: - networking.v1.NetworkPolicyIngressRule

public extension networking.v1 {

	///
	/// NetworkPolicyIngressRule describes a particular set of traffic that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and from.
	///
	struct NetworkPolicyIngressRule: KubernetesResource {
		///
		/// List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
		///
		public var from: [networking.v1.NetworkPolicyPeer]?
		///
		/// List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
		///
		public var ports: [networking.v1.NetworkPolicyPort]?
		///
		/// Default memberwise initializer
		///
		public init(
			from: [networking.v1.NetworkPolicyPeer]? = nil,
			ports: [networking.v1.NetworkPolicyPort]? = nil
		) {
			self.from = from
			self.ports = ports
		}
	}
}

///
/// Codable conformance
///
public extension networking.v1.NetworkPolicyIngressRule {

	private enum CodingKeys: String, CodingKey {

		case from = "from"
		case ports = "ports"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.from = try container.decodeIfPresent([networking.v1.NetworkPolicyPeer].self, forKey: .from)
		self.ports = try container.decodeIfPresent([networking.v1.NetworkPolicyPort].self, forKey: .ports)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(from, forKey: .from)
		try encodingContainer.encode(ports, forKey: .ports)
	}
}
