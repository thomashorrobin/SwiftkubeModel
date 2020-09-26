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

public extension core.v1 {

	///
	/// NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil.
	///
	struct NodeConfigSource: KubernetesResource {
		///
		/// ConfigMap is a reference to a Node's ConfigMap
		///
		public var configMap: core.v1.ConfigMapNodeConfigSource?
		///
		/// Default memberwise initializer
		///
		public init(
			configMap: core.v1.ConfigMapNodeConfigSource? = nil
		) {
			self.configMap = configMap
		}
	}
}

///
/// Codable conformance
///
extension core.v1.NodeConfigSource {

	private enum CodingKeys: String, CodingKey {
		case configMap = "configMap"
	}

}

