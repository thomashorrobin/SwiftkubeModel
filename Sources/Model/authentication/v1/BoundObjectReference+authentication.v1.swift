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

public extension authentication.v1 {

	///
	/// BoundObjectReference is a reference to an object that a token is bound to.
	///
	struct BoundObjectReference: KubernetesResource {
		///
		/// API version of the referent.
		///
		public var apiVersion: String?
		///
		/// Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
		///
		public var kind: String?
		///
		/// Name of the referent.
		///
		public var name: String?
		///
		/// UID of the referent.
		///
		public var uid: String?
		///
		/// Default memberwise initializer
		///
		public init(
			apiVersion: String? = nil,
			kind: String? = nil,
			name: String? = nil,
			uid: String? = nil
		) {
			self.apiVersion = apiVersion
			self.kind = kind
			self.name = name
			self.uid = uid
		}
	}
}

///
/// Codable conformance
///
extension authentication.v1.BoundObjectReference {

	private enum CodingKeys: String, CodingKey {
		case apiVersion = "apiVersion"
		case kind = "kind"
		case name = "name"
		case uid = "uid"
	}

}

