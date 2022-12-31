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
/// apiextensions.v1.CustomResourceDefinitionSpec
///

import Foundation

// MARK: - apiextensions.v1.CustomResourceDefinitionSpec

public extension apiextensions.v1 {

	///
	/// CustomResourceDefinitionSpec describes how a user wants their resource to appear
	///
	struct CustomResourceDefinitionSpec: KubernetesResource {
		///
		/// conversion defines conversion settings for the CRD.
		///
		public var conversion: apiextensions.v1.CustomResourceConversion?
		///
		/// group is the API group of the defined custom resource. The custom resources are served under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
		///
		public var group: String
		///
		/// names specify the resource and kind names for the custom resource.
		///
		public var names: apiextensions.v1.CustomResourceDefinitionNames
		///
		/// preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`. See https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions/#pruning-versus-preserving-unknown-fields for details.
		///
		public var preserveUnknownFields: Bool?
		///
		/// scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`.
		///
		public var scope: String
		///
		/// versions is the list of all API versions of the defined custom resource. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
		///
		public var versions: [apiextensions.v1.CustomResourceDefinitionVersion]
		///
		/// Default memberwise initializer
		///
		public init(
			conversion: apiextensions.v1.CustomResourceConversion? = nil,
			group: String,
			names: apiextensions.v1.CustomResourceDefinitionNames,
			preserveUnknownFields: Bool? = nil,
			scope: String,
			versions: [apiextensions.v1.CustomResourceDefinitionVersion]
		) {
			self.conversion = conversion
			self.group = group
			self.names = names
			self.preserveUnknownFields = preserveUnknownFields
			self.scope = scope
			self.versions = versions
		}
	}
}

///
/// Codable conformance
///
public extension apiextensions.v1.CustomResourceDefinitionSpec {

	private enum CodingKeys: String, CodingKey {

		case conversion = "conversion"
		case group = "group"
		case names = "names"
		case preserveUnknownFields = "preserveUnknownFields"
		case scope = "scope"
		case versions = "versions"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.conversion = try container.decodeIfPresent(apiextensions.v1.CustomResourceConversion.self, forKey: .conversion)
		self.group = try container.decode(String.self, forKey: .group)
		self.names = try container.decode(apiextensions.v1.CustomResourceDefinitionNames.self, forKey: .names)
		self.preserveUnknownFields = try container.decodeIfPresent(Bool.self, forKey: .preserveUnknownFields)
		self.scope = try container.decode(String.self, forKey: .scope)
		self.versions = try container.decode([apiextensions.v1.CustomResourceDefinitionVersion].self, forKey: .versions)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(conversion, forKey: .conversion)
		try encodingContainer.encode(group, forKey: .group)
		try encodingContainer.encode(names, forKey: .names)
		try encodingContainer.encode(preserveUnknownFields, forKey: .preserveUnknownFields)
		try encodingContainer.encode(scope, forKey: .scope)
		try encodingContainer.encode(versions, forKey: .versions)
	}
}
