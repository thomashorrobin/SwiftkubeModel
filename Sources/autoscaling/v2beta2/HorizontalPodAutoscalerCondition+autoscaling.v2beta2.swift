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

public extension autoscaling.v2beta2 {

	///
	/// HorizontalPodAutoscalerCondition describes the state of a HorizontalPodAutoscaler at a certain point.
	///
	struct HorizontalPodAutoscalerCondition: KubernetesResource {
		///
		/// lastTransitionTime is the last time the condition transitioned from one status to another
		///
		public var lastTransitionTime: String?

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

	}
}

