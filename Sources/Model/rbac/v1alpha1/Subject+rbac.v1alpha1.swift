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

public extension rbac.v1alpha1 {

	///
	/// Subject contains a reference to the object or user identities a role binding applies to.  This can either hold a direct API object reference, or a value for non-objects such as user and group names.
	///
	struct Subject: KubernetesResource {
		///
		/// APIVersion holds the API group and version of the referenced subject. Defaults to "v1" for ServiceAccount subjects. Defaults to "rbac.authorization.k8s.io/v1alpha1" for User and Group subjects.
		///
		public var apiVersion: String?
		///
		/// Kind of object being referenced. Values defined by this API group are "User", "Group", and "ServiceAccount". If the Authorizer does not recognized the kind value, the Authorizer should report an error.
		///
		public var kind: String
		///
		/// Name of the object being referenced.
		///
		public var name: String
		///
		/// Namespace of the referenced object.  If the object kind is non-namespace, such as "User" or "Group", and this value is not empty the Authorizer should report an error.
		///
		public var namespace: String?
		///
		/// Default memberwise initializer
		///
		public init(
			apiVersion: String? = nil,
			kind: String,
			name: String,
			namespace: String? = nil
		) {
			self.apiVersion = apiVersion
			self.kind = kind
			self.name = name
			self.namespace = namespace
		}
	}
}

///
/// Codable conformance
///
extension rbac.v1alpha1.Subject {

	private enum CodingKeys: String, CodingKey {
		case apiVersion = "apiVersion"
		case kind = "kind"
		case name = "name"
		case namespace = "namespace"
	}

}

