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

public extension storage.v1alpha1 {

	///
	/// VolumeAttachment captures the intent to attach or detach the specified volume to/from the specified node.
	/// 
	/// VolumeAttachment objects are non-namespaced.
	///
	struct VolumeAttachment: KubernetesResource, Codable {
	
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		let apiVersion: String = "storage.k8s.io/v1alpha1"
	
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		let kind: String = "VolumeAttachment"
	
		///
		/// Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		var metadata: meta.v1.ObjectMeta?
	
		///
		/// Specification of the desired attach/detach volume behavior. Populated by the Kubernetes system.
		///
		var spec: storage.v1alpha1.VolumeAttachmentSpec
	
		///
		/// Status of the VolumeAttachment request. Populated by the entity completing the attach or detach operation, i.e. the external-attacher.
		///
		var status: storage.v1alpha1.VolumeAttachmentStatus?
	
	}
}
