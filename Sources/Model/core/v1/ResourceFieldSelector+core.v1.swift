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
/// core.v1.ResourceFieldSelector
///

import Foundation

// MARK: - core.v1.ResourceFieldSelector

public extension core.v1 {

	///
	/// ResourceFieldSelector represents container resources (cpu, memory) and their output format
	///
	struct ResourceFieldSelector: KubernetesResource {
		///
		/// Container name: required for volumes, optional for env vars
		///
		public var containerName: String?
		///
		/// Specifies the output format of the exposed resources, defaults to "1"
		///
		public var divisor: Quantity?
		///
		/// Required: resource to select
		///
		public var resource: String
		///
		/// Default memberwise initializer
		///
		public init(
			containerName: String? = nil,
			divisor: Quantity? = nil,
			resource: String
		) {
			self.containerName = containerName
			self.divisor = divisor
			self.resource = resource
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.ResourceFieldSelector {

	private enum CodingKeys: String, CodingKey {

		case containerName = "containerName"
		case divisor = "divisor"
		case resource = "resource"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.containerName = try container.decodeIfPresent(String.self, forKey: .containerName)
		self.divisor = try container.decodeIfPresent(Quantity.self, forKey: .divisor)
		self.resource = try container.decode(String.self, forKey: .resource)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(containerName, forKey: .containerName)
		try encodingContainer.encode(divisor, forKey: .divisor)
		try encodingContainer.encode(resource, forKey: .resource)
	}
}
