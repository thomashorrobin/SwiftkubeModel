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

public extension storage.v1beta1 {

	///
	/// StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
	/// 
	/// StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
	///
	struct StorageClass: KubernetesResource, Codable {
	
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		let apiVersion: String = "storage.k8s.io/v1beta1"
	
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		let kind: String = "StorageClass"
	
		///
		/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		var metadata: meta.v1.ObjectMeta?
	
		///
		/// AllowVolumeExpansion shows whether the storage class allow volume expand
		///
		var allowVolumeExpansion: Bool?
	
		///
		/// Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
		///
		var allowedTopologies: [core.v1.TopologySelectorTerm]?
	
		///
		/// Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
		///
		var mountOptions: [String]?
	
		///
		/// Parameters holds the parameters for the provisioner that should create volumes of this storage class.
		///
		var parameters: [String: String]?
	
		///
		/// Provisioner indicates the type of the provisioner.
		///
		var provisioner: String
	
		///
		/// Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
		///
		var reclaimPolicy: String?
	
		///
		/// VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
		///
		var volumeBindingMode: String?
	
	}
}
