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
/// autoscaling.v1.ScaleStatus
///

import Foundation

public extension autoscaling.v1 {

	///
	/// ScaleStatus represents the current status of a scale subresource.
	///
	struct ScaleStatus: KubernetesResource {
		///
		/// actual number of observed instances of the scaled object.
		///
		public var replicas: Int32
		///
		/// label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: http://kubernetes.io/docs/user-guide/labels#label-selectors
		///
		public var selector: String?
		///
		/// Default memberwise initializer
		///
		public init(
			replicas: Int32,
			selector: String? = nil
		) {
			self.replicas = replicas
			self.selector = selector
		}
	}
}

///
/// Codable conformance
///
extension autoscaling.v1.ScaleStatus {

	private enum CodingKeys: String, CodingKey {

		case replicas = "replicas"
		case selector = "selector"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.replicas = try container.decode(Int32.self, forKey: .replicas)
		self.selector = try container.decodeIfPresent(String.self, forKey: .selector)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.replicas, forKey: .replicas)
		try container.encode(self.selector, forKey: .selector)
	}

}

