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
/// autoscaling.v2beta1.ExternalMetricSource
///

import Foundation

// MARK: - autoscaling.v2beta1.ExternalMetricSource

public extension autoscaling.v2beta1 {

	///
	/// ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster). Exactly one "target" type should be set.
	///
	struct ExternalMetricSource: KubernetesResource {
		///
		/// metricName is the name of the metric in question.
		///
		public var metricName: String
		///
		/// metricSelector is used to identify a specific time series within a given metric.
		///
		public var metricSelector: meta.v1.LabelSelector?
		///
		/// targetAverageValue is the target per-pod value of global metric (as a quantity). Mutually exclusive with TargetValue.
		///
		public var targetAverageValue: Quantity?
		///
		/// targetValue is the target value of the metric (as a quantity). Mutually exclusive with TargetAverageValue.
		///
		public var targetValue: Quantity?
		///
		/// Default memberwise initializer
		///
		public init(
			metricName: String,
			metricSelector: meta.v1.LabelSelector? = nil,
			targetAverageValue: Quantity? = nil,
			targetValue: Quantity? = nil
		) {
			self.metricName = metricName
			self.metricSelector = metricSelector
			self.targetAverageValue = targetAverageValue
			self.targetValue = targetValue
		}
	}
}

///
/// Codable conformance
///
public extension autoscaling.v2beta1.ExternalMetricSource {

	private enum CodingKeys: String, CodingKey {

		case metricName = "metricName"
		case metricSelector = "metricSelector"
		case targetAverageValue = "targetAverageValue"
		case targetValue = "targetValue"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metricName = try container.decode(String.self, forKey: .metricName)
		self.metricSelector = try container.decodeIfPresent(meta.v1.LabelSelector.self, forKey: .metricSelector)
		self.targetAverageValue = try container.decodeIfPresent(Quantity.self, forKey: .targetAverageValue)
		self.targetValue = try container.decodeIfPresent(Quantity.self, forKey: .targetValue)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(metricName, forKey: .metricName)
		try encodingContainer.encode(metricSelector, forKey: .metricSelector)
		try encodingContainer.encode(targetAverageValue, forKey: .targetAverageValue)
		try encodingContainer.encode(targetValue, forKey: .targetValue)
	}
}
