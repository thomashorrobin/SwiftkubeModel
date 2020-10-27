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
/// apiextensions.v1beta1.CustomResourceDefinitionList
///

import Foundation

public extension apiextensions.v1beta1 {

	///
	/// CustomResourceDefinitionList is a list of CustomResourceDefinition objects.
	///
	struct CustomResourceDefinitionList: KubernetesResource, KubernetesResourceList {
		///
		/// KubernetesResourceList.Item associated type
		///
		public typealias Item = apiextensions.v1beta1.CustomResourceDefinition
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "apiextensions.k8s.io/v1beta1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "CustomResourceDefinitionList"
		///
		/// No description
		///
		public var metadata: meta.v1.ListMeta?
		///
		/// items list individual CustomResourceDefinition objects
		///
		public var items: [apiextensions.v1beta1.CustomResourceDefinition]
		///
		/// Default memberwise initializer
		///
		public init(
			metadata: meta.v1.ListMeta? = nil,
			items: [apiextensions.v1beta1.CustomResourceDefinition]
		) {
			self.metadata = metadata
			self.items = items
		}
	}
}

///
/// Codable conformance
///
extension apiextensions.v1beta1.CustomResourceDefinitionList {

	private enum CodingKeys: String, CodingKey {
		case metadata = "metadata"
		case items = "items"
	}

}

///
/// Sequence iterator for KubernetesResourceList items
///
extension apiextensions.v1beta1.CustomResourceDefinitionList: Sequence {

	public typealias Element = apiextensions.v1beta1.CustomResourceDefinition

	public func makeIterator() -> AnyIterator<apiextensions.v1beta1.CustomResourceDefinition> {
		return AnyIterator(self.items.makeIterator())
	}
}
