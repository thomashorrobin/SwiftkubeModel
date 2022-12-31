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
/// core.v1.VsphereVirtualDiskVolumeSource
///

import Foundation

// MARK: - core.v1.VsphereVirtualDiskVolumeSource

public extension core.v1 {

	///
	/// Represents a vSphere volume resource.
	///
	struct VsphereVirtualDiskVolumeSource: KubernetesResource {
		///
		/// fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
		///
		public var fsType: String?
		///
		/// storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
		///
		public var storagePolicyID: String?
		///
		/// storagePolicyName is the storage Policy Based Management (SPBM) profile name.
		///
		public var storagePolicyName: String?
		///
		/// volumePath is the path that identifies vSphere volume vmdk
		///
		public var volumePath: String
		///
		/// Default memberwise initializer
		///
		public init(
			fsType: String? = nil,
			storagePolicyID: String? = nil,
			storagePolicyName: String? = nil,
			volumePath: String
		) {
			self.fsType = fsType
			self.storagePolicyID = storagePolicyID
			self.storagePolicyName = storagePolicyName
			self.volumePath = volumePath
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.VsphereVirtualDiskVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case fsType = "fsType"
		case storagePolicyID = "storagePolicyID"
		case storagePolicyName = "storagePolicyName"
		case volumePath = "volumePath"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.fsType = try container.decodeIfPresent(String.self, forKey: .fsType)
		self.storagePolicyID = try container.decodeIfPresent(String.self, forKey: .storagePolicyID)
		self.storagePolicyName = try container.decodeIfPresent(String.self, forKey: .storagePolicyName)
		self.volumePath = try container.decode(String.self, forKey: .volumePath)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(fsType, forKey: .fsType)
		try encodingContainer.encode(storagePolicyID, forKey: .storagePolicyID)
		try encodingContainer.encode(storagePolicyName, forKey: .storagePolicyName)
		try encodingContainer.encode(volumePath, forKey: .volumePath)
	}
}
