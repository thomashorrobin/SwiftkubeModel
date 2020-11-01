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

///
/// Generated by Swiftkube:ModelGen
/// Kubernetes v1.18.9
/// core.v1.ISCSIPersistentVolumeSource
///

import Foundation

public extension core.v1 {

	///
	/// ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
	///
	struct ISCSIPersistentVolumeSource: KubernetesResource {
		///
		/// whether support iSCSI Discovery CHAP authentication
		///
		public var chapAuthDiscovery: Bool?
		///
		/// whether support iSCSI Session CHAP authentication
		///
		public var chapAuthSession: Bool?
		///
		/// Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi
		///
		public var fsType: String?
		///
		/// Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
		///
		public var initiatorName: String?
		///
		/// Target iSCSI Qualified Name.
		///
		public var iqn: String
		///
		/// iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
		///
		public var iscsiInterface: String?
		///
		/// iSCSI Target Lun number.
		///
		public var lun: Int32
		///
		/// iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
		///
		public var portals: [String]?
		///
		/// ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
		///
		public var readOnly: Bool?
		///
		/// CHAP Secret for iSCSI target and initiator authentication
		///
		public var secretRef: core.v1.SecretReference?
		///
		/// iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
		///
		public var targetPortal: String
		///
		/// Default memberwise initializer
		///
		public init(
			chapAuthDiscovery: Bool? = nil,
			chapAuthSession: Bool? = nil,
			fsType: String? = nil,
			initiatorName: String? = nil,
			iqn: String,
			iscsiInterface: String? = nil,
			lun: Int32,
			portals: [String]? = nil,
			readOnly: Bool? = nil,
			secretRef: core.v1.SecretReference? = nil,
			targetPortal: String
		) {
			self.chapAuthDiscovery = chapAuthDiscovery
			self.chapAuthSession = chapAuthSession
			self.fsType = fsType
			self.initiatorName = initiatorName
			self.iqn = iqn
			self.iscsiInterface = iscsiInterface
			self.lun = lun
			self.portals = portals
			self.readOnly = readOnly
			self.secretRef = secretRef
			self.targetPortal = targetPortal
		}
	}
}

///
/// Codable conformance
///
extension core.v1.ISCSIPersistentVolumeSource {

	private enum CodingKeys: String, CodingKey {

		case chapAuthDiscovery = "chapAuthDiscovery"
		case chapAuthSession = "chapAuthSession"
		case fsType = "fsType"
		case initiatorName = "initiatorName"
		case iqn = "iqn"
		case iscsiInterface = "iscsiInterface"
		case lun = "lun"
		case portals = "portals"
		case readOnly = "readOnly"
		case secretRef = "secretRef"
		case targetPortal = "targetPortal"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.chapAuthDiscovery = try container.decodeIfPresent(Bool.self, forKey: .chapAuthDiscovery)
		self.chapAuthSession = try container.decodeIfPresent(Bool.self, forKey: .chapAuthSession)
		self.fsType = try container.decodeIfPresent(String.self, forKey: .fsType)
		self.initiatorName = try container.decodeIfPresent(String.self, forKey: .initiatorName)
		self.iqn = try container.decode(String.self, forKey: .iqn)
		self.iscsiInterface = try container.decodeIfPresent(String.self, forKey: .iscsiInterface)
		self.lun = try container.decode(Int32.self, forKey: .lun)
		self.portals = try container.decodeIfPresent([String].self, forKey: .portals)
		self.readOnly = try container.decodeIfPresent(Bool.self, forKey: .readOnly)
		self.secretRef = try container.decodeIfPresent(core.v1.SecretReference.self, forKey: .secretRef)
		self.targetPortal = try container.decode(String.self, forKey: .targetPortal)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.chapAuthDiscovery, forKey: .chapAuthDiscovery)
		try container.encode(self.chapAuthSession, forKey: .chapAuthSession)
		try container.encode(self.fsType, forKey: .fsType)
		try container.encode(self.initiatorName, forKey: .initiatorName)
		try container.encode(self.iqn, forKey: .iqn)
		try container.encode(self.iscsiInterface, forKey: .iscsiInterface)
		try container.encode(self.lun, forKey: .lun)
		try container.encode(self.portals, forKey: .portals)
		try container.encode(self.readOnly, forKey: .readOnly)
		try container.encode(self.secretRef, forKey: .secretRef)
		try container.encode(self.targetPortal, forKey: .targetPortal)
	}

}

