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
/// core.v1.SessionAffinityConfig
///

import Foundation

// MARK: - core.v1.SessionAffinityConfig

public extension core.v1 {

	///
	/// SessionAffinityConfig represents the configurations of session affinity.
	///
	struct SessionAffinityConfig: KubernetesResource {
		///
		/// clientIP contains the configurations of Client IP based session affinity.
		///
		public var clientIP: core.v1.ClientIPConfig?
		///
		/// Default memberwise initializer
		///
		public init(
			clientIP: core.v1.ClientIPConfig? = nil
		) {
			self.clientIP = clientIP
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.SessionAffinityConfig {

	private enum CodingKeys: String, CodingKey {

		case clientIP = "clientIP"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.clientIP = try container.decodeIfPresent(core.v1.ClientIPConfig.self, forKey: .clientIP)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(clientIP, forKey: .clientIP)
	}
}
