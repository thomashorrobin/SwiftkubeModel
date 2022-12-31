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
/// autoscaling.v2beta2.MetricStatus
///

import Foundation

// MARK: - autoscaling.v2beta2.MetricStatus

public extension autoscaling.v2beta2 {

	///
	/// MetricStatus describes the last-read state of a single metric.
	///
	struct MetricStatus: KubernetesResource {
		///
		/// container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
		///
		public var containerResource: autoscaling.v2beta2.ContainerResourceMetricStatus?
		///
		/// external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
		///
		public var external: autoscaling.v2beta2.ExternalMetricStatus?
		///
		/// object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
		///
		public var object: autoscaling.v2beta2.ObjectMetricStatus?
		///
		/// pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
		///
		public var pods: autoscaling.v2beta2.PodsMetricStatus?
		///
		/// resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
		///
		public var resource: autoscaling.v2beta2.ResourceMetricStatus?
		///
		/// type is the type of metric source.  It will be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each corresponds to a matching field in the object. Note: "ContainerResource" type is available on when the feature-gate HPAContainerMetrics is enabled
		///
		public var type: String
		///
		/// Default memberwise initializer
		///
		public init(
			containerResource: autoscaling.v2beta2.ContainerResourceMetricStatus? = nil,
			external: autoscaling.v2beta2.ExternalMetricStatus? = nil,
			object: autoscaling.v2beta2.ObjectMetricStatus? = nil,
			pods: autoscaling.v2beta2.PodsMetricStatus? = nil,
			resource: autoscaling.v2beta2.ResourceMetricStatus? = nil,
			type: String
		) {
			self.containerResource = containerResource
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
public extension autoscaling.v2beta2.MetricStatus {

	private enum CodingKeys: String, CodingKey {

		case containerResource = "containerResource"
		case external = "external"
		case object = "object"
		case pods = "pods"
		case resource = "resource"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.containerResource = try container.decodeIfPresent(autoscaling.v2beta2.ContainerResourceMetricStatus.self, forKey: .containerResource)
		self.external = try container.decodeIfPresent(autoscaling.v2beta2.ExternalMetricStatus.self, forKey: .external)
		self.object = try container.decodeIfPresent(autoscaling.v2beta2.ObjectMetricStatus.self, forKey: .object)
		self.pods = try container.decodeIfPresent(autoscaling.v2beta2.PodsMetricStatus.self, forKey: .pods)
		self.resource = try container.decodeIfPresent(autoscaling.v2beta2.ResourceMetricStatus.self, forKey: .resource)
		self.type = try container.decode(String.self, forKey: .type)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(containerResource, forKey: .containerResource)
		try encodingContainer.encode(external, forKey: .external)
		try encodingContainer.encode(object, forKey: .object)
		try encodingContainer.encode(pods, forKey: .pods)
		try encodingContainer.encode(resource, forKey: .resource)
		try encodingContainer.encode(type, forKey: .type)
	}
}
