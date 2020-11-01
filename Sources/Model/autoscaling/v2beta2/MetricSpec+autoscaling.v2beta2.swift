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
/// autoscaling.v2beta2.MetricSpec
///

import Foundation

public extension autoscaling.v2beta2 {

	///
	/// MetricSpec specifies how to scale based on a single metric (only `type` and one other matching field should be set at once).
	///
	struct MetricSpec: KubernetesResource {
		///
		/// external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
		///
		public var external: autoscaling.v2beta2.ExternalMetricSource?
		///
		/// object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
		///
		public var object: autoscaling.v2beta2.ObjectMetricSource?
		///
		/// pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
		///
		public var pods: autoscaling.v2beta2.PodsMetricSource?
		///
		/// resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
		///
		public var resource: autoscaling.v2beta2.ResourceMetricSource?
		///
		/// type is the type of metric source.  It should be one of "Object", "Pods" or "Resource", each mapping to a matching field in the object.
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			external: autoscaling.v2beta2.ExternalMetricSource? = nil,
			object: autoscaling.v2beta2.ObjectMetricSource? = nil,
			pods: autoscaling.v2beta2.PodsMetricSource? = nil,
			resource: autoscaling.v2beta2.ResourceMetricSource? = nil,
			type: String
		) {
			self.external = external
			self.object = object
			self.pods = pods
			self.resource = resource
			self.type = type
		}
	}
}

///
/// Codable conformance
///
extension autoscaling.v2beta2.MetricSpec {

	private enum CodingKeys: String, CodingKey {

		case external = "external"
		case object = "object"
		case pods = "pods"
		case resource = "resource"
		case type = "type"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.external = try container.decodeIfPresent(autoscaling.v2beta2.ExternalMetricSource.self, forKey: .external)
		self.object = try container.decodeIfPresent(autoscaling.v2beta2.ObjectMetricSource.self, forKey: .object)
		self.pods = try container.decodeIfPresent(autoscaling.v2beta2.PodsMetricSource.self, forKey: .pods)
		self.resource = try container.decodeIfPresent(autoscaling.v2beta2.ResourceMetricSource.self, forKey: .resource)
		self.type = try container.decode(String.self, forKey: .type)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.external, forKey: .external)
		try container.encode(self.object, forKey: .object)
		try container.encode(self.pods, forKey: .pods)
		try container.encode(self.resource, forKey: .resource)
		try container.encode(self.type, forKey: .type)
	}

}

