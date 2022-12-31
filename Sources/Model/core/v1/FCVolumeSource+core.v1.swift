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
/// core.v1.FCVolumeSource
///

import Foundation

// MARK: - core.v1.FCVolumeSource

public extension core.v1 {

	///
	/// Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.
	///
	struct FCVolumeSource: KubernetesResource {
		///
		/// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
		///
		public var fsType: String?
		///
		/// lun is Optional: FC target lun number
		///
		public var lun: Int32?
		///
		/// readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
		///
		public var readOnly: Bool?
		///
		/// targetWWNs is Optional: FC target worldwide names (WWNs)
		///
		public var targetWWNs: [String]?
		///
		/// wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.
		///
		public var wwids: [String]?
		///
		/// Default memberwise initializer
		///
		public init(
			fsType: String? = nil,
			lun: Int32? = nil,
			readOnly: Bool? = nil,
			targetWWNs: [String]? = nil,
			wwids: [String]? = nil
		) {
			self.fsType = fsType
			self.lun = lun
			self.readOnly = readOnly
			self.targetWWNs = targetWWNs
			self.wwids = wwids
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.FCVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case fsType = "fsType"
		case lun = "lun"
		case readOnly = "readOnly"
		case targetWWNs = "targetWWNs"
		case wwids = "wwids"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.fsType = try container.decodeIfPresent(String.self, forKey: .fsType)
		self.lun = try container.decodeIfPresent(Int32.self, forKey: .lun)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
		self.targetWWNs = try container.decodeIfPresent([String].self, forKey: .targetWWNs)
		self.wwids = try container.decodeIfPresent([String].self, forKey: .wwids)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(fsType, forKey: .fsType)
		try encodingContainer.encode(lun, forKey: .lun)
		try encodingContainer.encode(readOnly, forKey: .readOnly)
		try encodingContainer.encode(targetWWNs, forKey: .targetWWNs)
		try encodingContainer.encode(wwids, forKey: .wwids)
	}
}
