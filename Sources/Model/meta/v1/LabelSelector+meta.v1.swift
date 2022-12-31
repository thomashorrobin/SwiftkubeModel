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
/// meta.v1.LabelSelector
///

import Foundation

// MARK: - meta.v1.LabelSelector

public extension meta.v1 {

	///
	/// A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
	///
	struct LabelSelector: KubernetesResource {
		///
		/// matchExpressions is a list of label selector requirements. The requirements are ANDed.
		///
		public var matchExpressions: [meta.v1.LabelSelectorRequirement]?
		///
		/// matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
		///
		public var matchLabels: [String: String]?
		///
		/// Default memberwise initializer
		///
		public init(
			matchExpressions: [meta.v1.LabelSelectorRequirement]? = nil,
			matchLabels: [String: String]? = nil
		) {
			self.matchExpressions = matchExpressions
			self.matchLabels = matchLabels
		}
	}
}

///
/// Codable conformance
///
public extension meta.v1.LabelSelector {

	private enum CodingKeys: String, CodingKey {

		case matchExpressions = "matchExpressions"
		case matchLabels = "matchLabels"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.matchExpressions = try container.decodeIfPresent([meta.v1.LabelSelectorRequirement].self, forKey: .matchExpressions)
		self.matchLabels = try container.decodeIfPresent([String: String].self, forKey: .matchLabels)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(matchExpressions, forKey: .matchExpressions)
		try encodingContainer.encode(matchLabels, forKey: .matchLabels)
	}
}
