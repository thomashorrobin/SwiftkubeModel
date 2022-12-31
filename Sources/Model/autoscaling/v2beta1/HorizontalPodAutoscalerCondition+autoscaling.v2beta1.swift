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
/// autoscaling.v2beta1.HorizontalPodAutoscalerCondition
///

import Foundation

// MARK: - autoscaling.v2beta1.HorizontalPodAutoscalerCondition

public extension autoscaling.v2beta1 {

	///
	/// HorizontalPodAutoscalerCondition describes the state of a HorizontalPodAutoscaler at a certain point.
	///
	struct HorizontalPodAutoscalerCondition: KubernetesResource {
		///
		/// lastTransitionTime is the last time the condition transitioned from one status to another
		///
		public var lastTransitionTime: Date?
		///
		/// message is a human-readable explanation containing details about the transition
		///
		public var message: String?
		///
		/// reason is the reason for the condition's last transition.
		///
		public var reason: String?
		///
		/// status is the status of the condition (True, False, Unknown)
		///
		public var status: String
		///
		/// type describes the current condition
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			lastTransitionTime: Date? = nil,
			message: String? = nil,
			reason: String? = nil,
			status: String,
			type: String
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
public extension autoscaling.v2beta1.HorizontalPodAutoscalerCondition {

	private enum CodingKeys: String, CodingKey {

		case lastTransitionTime = "lastTransitionTime"
		case message = "message"
		case reason = "reason"
		case status = "status"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.lastTransitionTime = try container.decodeIfPresent(Date.self, forKey: .lastTransitionTime)
		self.message = try container.decodeIfPresent(String.self, forKey: .message)
		self.reason = try container.decodeIfPresent(String.self, forKey: .reason)
		self.status = try container.decode(String.self, forKey: .status)
		self.type = try container.decode(String.self, forKey: .type)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(lastTransitionTime, forKey: .lastTransitionTime)
		try encodingContainer.encode(message, forKey: .message)
		try encodingContainer.encode(reason, forKey: .reason)
		try encodingContainer.encode(status, forKey: .status)
		try encodingContainer.encode(type, forKey: .type)
	}
}
