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
/// flowcontrol.v1alpha1.PriorityLevelConfigurationCondition
///

import Foundation

public extension flowcontrol.v1alpha1 {

	///
	/// PriorityLevelConfigurationCondition defines the condition of priority level.
	///
	struct PriorityLevelConfigurationCondition: KubernetesResource {
		///
		/// `lastTransitionTime` is the last time the condition transitioned from one status to another.
		///
		public var lastTransitionTime: String?
		///
		/// `message` is a human-readable message indicating details about last transition.
		///
		public var message: String?
		///
		/// `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
		///
		public var reason: String?
		///
		/// `status` is the status of the condition. Can be True, False, Unknown. Required.
		///
		public var status: String?
		///
		/// `type` is the type of the condition. Required.
		///
		public var type: String?
		///
		/// Default memberwise initializer
		///
		public init(
			lastTransitionTime: String? = nil,
			message: String? = nil,
			reason: String? = nil,
			status: String? = nil,
			type: String? = nil
		) {
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
extension flowcontrol.v1alpha1.PriorityLevelConfigurationCondition {

	private enum CodingKeys: String, CodingKey {

		case lastTransitionTime = "lastTransitionTime"
		case message = "message"
		case reason = "reason"
		case status = "status"
		case type = "type"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.lastTransitionTime = try container.decodeIfPresent(String.self, forKey: .lastTransitionTime)
		self.message = try container.decodeIfPresent(String.self, forKey: .message)
		self.reason = try container.decodeIfPresent(String.self, forKey: .reason)
		self.status = try container.decodeIfPresent(String.self, forKey: .status)
		self.type = try container.decodeIfPresent(String.self, forKey: .type)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.lastTransitionTime, forKey: .lastTransitionTime)
		try container.encode(self.message, forKey: .message)
		try container.encode(self.reason, forKey: .reason)
		try container.encode(self.status, forKey: .status)
		try container.encode(self.type, forKey: .type)
	}

}

