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

public extension autoscaling.v2beta1 {

	///
	/// ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
	///
	struct ResourceMetricStatus: KubernetesResource {
		///
		/// currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification.
		///
		public var currentAverageUtilization: Int32?
		///
		/// currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type. It will always be set, regardless of the corresponding metric specification.
		///
		public var currentAverageValue: Quantity
		///
		/// name is the name of the resource in question.
		///
		public var name: String
		///
		/// Default memberwise initializer
		///
		public init(
			currentAverageUtilization: Int32? = nil,
			currentAverageValue: Quantity,
			name: String
		) {
			self.currentAverageUtilization = currentAverageUtilization
			self.currentAverageValue = currentAverageValue
			self.name = name
		}
	}
}

///
/// Codable conformance
///
extension autoscaling.v2beta1.ResourceMetricStatus {

	private enum CodingKeys: String, CodingKey {
		case currentAverageUtilization = "currentAverageUtilization"
		case currentAverageValue = "currentAverageValue"
		case name = "name"
	}

}

