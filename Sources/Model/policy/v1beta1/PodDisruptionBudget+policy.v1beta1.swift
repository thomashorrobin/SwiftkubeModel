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
/// policy.v1beta1.PodDisruptionBudget
///

import Foundation

public extension policy.v1beta1 {

	///
	/// PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
	///
	struct PodDisruptionBudget: KubernetesResource, KubernetesAPIResource, MetadataHavingResource, ListableResource {
		///
		/// ListableResource.List associated type
		///
		public typealias List = policy.v1beta1.PodDisruptionBudgetList
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "policy/v1beta1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "PodDisruptionBudget"
		///
		/// No description
		///
		public var metadata: meta.v1.ObjectMeta?
		///
		/// Specification of the desired behavior of the PodDisruptionBudget.
		///
		public var spec: policy.v1beta1.PodDisruptionBudgetSpec?
		///
		/// Most recently observed status of the PodDisruptionBudget.
		///
		public var status: policy.v1beta1.PodDisruptionBudgetStatus?
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ObjectMeta? = nil,
			spec: policy.v1beta1.PodDisruptionBudgetSpec? = nil,
			status: policy.v1beta1.PodDisruptionBudgetStatus? = nil
		) {
			self.metadata = metadata
			self.spec = spec
			self.status = status
		}
	}
}

///
/// Codable conformance
///
extension policy.v1beta1.PodDisruptionBudget {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case metadata = "metadata"
		case spec = "spec"
		case status = "status"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.metadata = try container.decodeIfPresent(meta.v1.ObjectMeta.self, forKey: .metadata)
		self.spec = try container.decodeIfPresent(policy.v1beta1.PodDisruptionBudgetSpec.self, forKey: .spec)
		self.status = try container.decodeIfPresent(policy.v1beta1.PodDisruptionBudgetStatus.self, forKey: .status)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.apiVersion, forKey: .apiVersion)
		try container.encode(self.kind, forKey: .kind)
		try container.encode(self.metadata, forKey: .metadata)
		try container.encode(self.spec, forKey: .spec)
		try container.encode(self.status, forKey: .status)
	}

}

