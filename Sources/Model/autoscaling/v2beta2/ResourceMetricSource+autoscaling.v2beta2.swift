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
	/// ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
	///
	struct ResourceMetricSource: KubernetesResource {
		///
		/// name is the name of the resource in question.
		///
		public var name: String
		///
		/// target specifies the target value for the given metric
		///
		public var target: autoscaling.v2beta2.MetricTarget
		///
		/// Default memberwise initializer
		///
		public init(
			name: String,
			target: autoscaling.v2beta2.MetricTarget
		) {
			self.name = name
			self.target = target
		}
	}
}

///
/// Codable conformance
///
extension autoscaling.v2beta2.ResourceMetricSource {

	private enum CodingKeys: String, CodingKey {
		case name = "name"
		case target = "target"
	}

}

