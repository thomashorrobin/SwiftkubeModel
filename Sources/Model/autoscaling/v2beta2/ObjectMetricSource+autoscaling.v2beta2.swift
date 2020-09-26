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
	/// ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
	///
	struct ObjectMetricSource: KubernetesResource {
		///
		/// No description
		///
		public var describedObject: autoscaling.v2beta2.CrossVersionObjectReference
		///
		/// metric identifies the target metric by name and selector
		///
		public var metric: autoscaling.v2beta2.MetricIdentifier
		///
		/// target specifies the target value for the given metric
		///
		public var target: autoscaling.v2beta2.MetricTarget
		///
		/// Default memberwise initializer
		///
		public init(
			describedObject: autoscaling.v2beta2.CrossVersionObjectReference,
			metric: autoscaling.v2beta2.MetricIdentifier,
			target: autoscaling.v2beta2.MetricTarget
		) {
			self.describedObject = describedObject
			self.metric = metric
			self.target = target
		}
	}
}

///
/// Codable conformance
///
extension autoscaling.v2beta2.ObjectMetricSource {

	private enum CodingKeys: String, CodingKey {
		case describedObject = "describedObject"
		case metric = "metric"
		case target = "target"
	}

}

