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
	/// ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config source for the Node.
	///
	struct ConfigMapNodeConfigSource: KubernetesResource, Codable {
	
		///
		/// KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
		///
		var kubeletConfigKey: String
	
		///
		/// Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
		///
		var name: String
	
		///
		/// Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
		///
		var namespace: String
	
		///
		/// ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
		///
		var resourceVersion: String?
	
		///
		/// UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
		///
		var uid: String?
	
	}
}
