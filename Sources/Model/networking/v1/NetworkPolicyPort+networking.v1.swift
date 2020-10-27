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
/// networking.v1.NetworkPolicyPort
///

import Foundation

public extension networking.v1 {

	///
	/// NetworkPolicyPort describes a port to allow traffic on
	///
	struct NetworkPolicyPort: KubernetesResource {
		///
		/// The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers.
		///
		public var port: IntOrString?
		///
		/// The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
		///
		public var `protocol`: String?
		///
		/// Default memberwise initializer
		///
		public init(
			port: IntOrString? = nil,
			`protocol`: String? = nil
		) {
			self.port = port
			self.`protocol` = `protocol`
		}
	}
}

///
/// Codable conformance
///
extension networking.v1.NetworkPolicyPort {

	private enum CodingKeys: String, CodingKey {
		case port = "port"
		case `protocol` = "protocol"
	}

}
