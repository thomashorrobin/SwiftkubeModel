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
	/// PersistentVolumeClaimCondition contails details about state of pvc
	///
	struct PersistentVolumeClaimCondition: KubernetesResource {
		///
		/// Last time we probed the condition.
		///
		public var lastProbeTime: String?
		///
		/// Last time the condition transitioned from one status to another.
		///
		public var lastTransitionTime: String?
		///
		/// Human-readable message indicating details about last transition.
		///
		public var message: String?
		///
		/// Unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports "ResizeStarted" that means the underlying persistent volume is being resized.
		///
		public var reason: String?
		///
		/// No description
		///
		public var status: String
		///
		/// No description
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			lastProbeTime: String? = nil,
			lastTransitionTime: String? = nil,
			message: String? = nil,
			reason: String? = nil,
			status: String,
			type: String
		) {
			self.lastProbeTime = lastProbeTime
			self.lastTransitionTime = lastTransitionTime
			self.message = message
			self.reason = reason
			self.status = status
			self.type = type
		}
	}
}

///
/// Codable conformance
///
extension core.v1.PersistentVolumeClaimCondition {

	private enum CodingKeys: String, CodingKey {
		case lastProbeTime = "lastProbeTime"
		case lastTransitionTime = "lastTransitionTime"
		case message = "message"
		case reason = "reason"
		case status = "status"
		case type = "type"
	}

}

