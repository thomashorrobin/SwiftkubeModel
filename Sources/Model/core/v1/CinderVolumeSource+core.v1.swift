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
	/// Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
	///
	struct CinderVolumeSource: KubernetesResource {
		///
		/// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
		///
		public var fsType: String?
		///
		/// Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
		///
		public var readOnly: Bool?
		///
		/// Optional: points to a secret object containing parameters used to connect to OpenStack.
		///
		public var secretRef: core.v1.LocalObjectReference?
		///
		/// volume id used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
		///
		public var volumeID: String
		///
		/// Default memberwise initializer
		///
		public init(
			fsType: String? = nil,
			readOnly: Bool? = nil,
			secretRef: core.v1.LocalObjectReference? = nil,
			volumeID: String
		) {
			self.fsType = fsType
			self.readOnly = readOnly
			self.secretRef = secretRef
			self.volumeID = volumeID
		}
	}
}

///
/// Codable conformance
///
extension core.v1.CinderVolumeSource {

	private enum CodingKeys: String, CodingKey {
		case fsType = "fsType"
		case readOnly = "readOnly"
		case secretRef = "secretRef"
		case volumeID = "volumeID"
	}

}

