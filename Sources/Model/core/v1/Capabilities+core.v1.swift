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
/// core.v1.Capabilities
///

import Foundation

// MARK: - core.v1.Capabilities

public extension core.v1 {

	///
	/// Adds and removes POSIX capabilities from running containers.
	///
	struct Capabilities: KubernetesResource {
		///
		/// Added capabilities
		///
		public var add: [String]?
		///
		/// Removed capabilities
		///
		public var drop: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			add: [String]? = nil,
			drop: [String]? = nil
		) {
			self.add = add
			self.drop = drop
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.Capabilities {

	private enum CodingKeys: String, CodingKey {

		case add = "add"
		case drop = "drop"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.add = try container.decodeIfPresent([String].self, forKey: .add)
		self.drop = try container.decodeIfPresent([String].self, forKey: .drop)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(add, forKey: .add)
		try encodingContainer.encode(drop, forKey: .drop)
	}
}
