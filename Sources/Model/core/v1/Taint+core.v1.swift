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

public extension core.v1 {

	///
	/// The node this Taint is attached to has the "effect" on any pod that does not tolerate the Taint.
	///
	struct Taint: KubernetesResource {
		///
		/// Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.
		///
		public var effect: String
		///
		/// Required. The taint key to be applied to a node.
		///
		public var key: String
		///
		/// TimeAdded represents the time at which the taint was added. It is only written for NoExecute taints.
		///
		public var timeAdded: String?
		///
		/// Required. The taint value corresponding to the taint key.
		///
		public var value: String?
		///
		/// Default memberwise initializer
		///
		public init(
			effect: String,
			key: String,
			timeAdded: String? = nil,
			value: String? = nil
		) {
			self.effect = effect
			self.key = key
			self.timeAdded = timeAdded
			self.value = value
		}
	}
}

///
/// Codable conformance
///
extension core.v1.Taint {

	private enum CodingKeys: String, CodingKey {
		case effect = "effect"
		case key = "key"
		case timeAdded = "timeAdded"
		case value = "value"
	}

}

