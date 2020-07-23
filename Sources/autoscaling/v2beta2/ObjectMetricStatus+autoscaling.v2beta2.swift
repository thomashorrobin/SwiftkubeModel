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
	/// ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
	///
	struct ObjectMetricStatus: KubernetesResource {
		///
		/// current contains the current value for the given metric
		///
		public var current: autoscaling.v2beta2.MetricValueStatus
		///
		/// No description
		///
		public var describedObject: autoscaling.v2beta2.CrossVersionObjectReference
		///
		/// metric identifies the target metric by name and selector
		///
		public var metric: autoscaling.v2beta2.MetricIdentifier
		///
		/// Default memberwise initializer
		///
		public init(
			current: autoscaling.v2beta2.MetricValueStatus, 
			describedObject: autoscaling.v2beta2.CrossVersionObjectReference, 
			metric: autoscaling.v2beta2.MetricIdentifier
		) {
			self.current = current
			self.describedObject = describedObject
			self.metric = metric
		}
	}
}

