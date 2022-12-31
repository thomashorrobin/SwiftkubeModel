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
/// core.v1.ResourceQuotaStatus
///

import Foundation

// MARK: - core.v1.ResourceQuotaStatus

public extension core.v1 {

	///
	/// ResourceQuotaStatus defines the enforced hard limits and observed use.
	///
	struct ResourceQuotaStatus: KubernetesResource {
		///
		/// Hard is the set of enforced hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
		///
		public var hard: [String: Quantity]?
		///
		/// Used is the current observed total usage of the resource in the namespace.
		///
		public var used: [String: Quantity]?
		///
		/// Default memberwise initializer
		///
		public init(
			hard: [String: Quantity]? = nil,
			used: [String: Quantity]? = nil
		) {
			self.hard = hard
			self.used = used
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ResourceQuotaStatus {

	private enum CodingKeys: String, CodingKey {

		case hard = "hard"
		case used = "used"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.hard = try container.decodeIfPresent([String: Quantity].self, forKey: .hard)
		self.used = try container.decodeIfPresent([String: Quantity].self, forKey: .used)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(hard, forKey: .hard)
		try encodingContainer.encode(used, forKey: .used)
	}
}
