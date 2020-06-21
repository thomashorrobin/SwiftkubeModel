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
	/// PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
	///
	struct PersistentVolumeClaimSpec: KubernetesResource, Codable {
	
		///
		/// AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
		///
		var accessModes: [String]?
	
		///
		/// This field requires the VolumeSnapshotDataSource alpha feature gate to be enabled and currently VolumeSnapshot is the only supported data source. If the provisioner can support VolumeSnapshot data source, it will create a new volume and data will be restored to the volume at the same time. If the provisioner does not support VolumeSnapshot data source, volume will not be created and the failure will be reported as an event. In the future, we plan to support more data source types and the behavior of the provisioner may change.
		///
		var dataSource: core.v1.TypedLocalObjectReference?
	
		///
		/// Resources represents the minimum resources the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
		///
		var resources: core.v1.ResourceRequirements?
	
		///
		/// A label query over volumes to consider for binding.
		///
		var selector: meta.v1.LabelSelector?
	
		///
		/// Name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1
		///
		var storageClassName: String?
	
		///
		/// volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec. This is a beta feature.
		///
		var volumeMode: String?
	
		///
		/// VolumeName is the binding reference to the PersistentVolume backing this claim.
		///
		var volumeName: String?
	
	}
}
