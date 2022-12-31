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
/// core.v1.PersistentVolumeSpec
///

import Foundation

// MARK: - core.v1.PersistentVolumeSpec

public extension core.v1 {

	///
	/// PersistentVolumeSpec is the specification of a persistent volume.
	///
	struct PersistentVolumeSpec: KubernetesResource {
		///
		/// accessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes
		///
		public var accessModes: [String]?
		///
		/// awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
		///
		public var awsElasticBlockStore: core.v1.AWSElasticBlockStoreVolumeSource?
		///
		/// azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
		///
		public var azureDisk: core.v1.AzureDiskVolumeSource?
		///
		/// azureFile represents an Azure File Service mount on the host and bind mount to the pod.
		///
		public var azureFile: core.v1.AzureFilePersistentVolumeSource?
		///
		/// capacity is the description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
		///
		public var capacity: [String: Quantity]?
		///
		/// cephFS represents a Ceph FS mount on the host that shares a pod's lifetime
		///
		public var cephfs: core.v1.CephFSPersistentVolumeSource?
		///
		/// cinder represents a cinder volume attached and mounted on kubelets host machine. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
		///
		public var cinder: core.v1.CinderPersistentVolumeSource?
		///
		/// claimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding
		///
		public var claimRef: core.v1.ObjectReference?
		///
		/// csi represents storage that is handled by an external CSI driver (Beta feature).
		///
		public var csi: core.v1.CSIPersistentVolumeSource?
		///
		/// fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
		///
		public var fc: core.v1.FCVolumeSource?
		///
		/// flexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.
		///
		public var flexVolume: core.v1.FlexPersistentVolumeSource?
		///
		/// flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running
		///
		public var flocker: core.v1.FlockerVolumeSource?
		///
		/// gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
		///
		public var gcePersistentDisk: core.v1.GCEPersistentDiskVolumeSource?
		///
		/// glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: https://examples.k8s.io/volumes/glusterfs/README.md
		///
		public var glusterfs: core.v1.GlusterfsPersistentVolumeSource?
		///
		/// hostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
		///
		public var hostPath: core.v1.HostPathVolumeSource?
		///
		/// iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.
		///
		public var iscsi: core.v1.ISCSIPersistentVolumeSource?
		///
		/// local represents directly-attached storage with node affinity
		///
		public var local: core.v1.LocalVolumeSource?
		///
		/// mountOptions is the list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options
		///
		public var mountOptions: [String]?
		///
		/// nfs represents an NFS mount on the host. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
		///
		public var nfs: core.v1.NFSVolumeSource?
		///
		/// nodeAffinity defines constraints that limit what nodes this volume can be accessed from. This field influences the scheduling of pods that use this volume.
		///
		public var nodeAffinity: core.v1.VolumeNodeAffinity?
		///
		/// persistentVolumeReclaimPolicy defines what happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming
		///
		///
		///
		public var persistentVolumeReclaimPolicy: String?
		///
		/// photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
		///
		public var photonPersistentDisk: core.v1.PhotonPersistentDiskVolumeSource?
		///
		/// portworxVolume represents a portworx volume attached and mounted on kubelets host machine
		///
		public var portworxVolume: core.v1.PortworxVolumeSource?
		///
		/// quobyte represents a Quobyte mount on the host that shares a pod's lifetime
		///
		public var quobyte: core.v1.QuobyteVolumeSource?
		///
		/// rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/rbd/README.md
		///
		public var rbd: core.v1.RBDPersistentVolumeSource?
		///
		/// scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
		///
		public var scaleIO: core.v1.ScaleIOPersistentVolumeSource?
		///
		/// storageClassName is the name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
		///
		public var storageClassName: String?
		///
		/// storageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod More info: https://examples.k8s.io/volumes/storageos/README.md
		///
		public var storageos: core.v1.StorageOSPersistentVolumeSource?
		///
		/// volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.
		///
		public var volumeMode: String?
		///
		/// vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
		///
		public var vsphereVolume: core.v1.VsphereVirtualDiskVolumeSource?
		///
		/// Default memberwise initializer
		///
		public init(
			accessModes: [String]? = nil,
			awsElasticBlockStore: core.v1.AWSElasticBlockStoreVolumeSource? = nil,
			azureDisk: core.v1.AzureDiskVolumeSource? = nil,
			azureFile: core.v1.AzureFilePersistentVolumeSource? = nil,
			capacity: [String: Quantity]? = nil,
			cephfs: core.v1.CephFSPersistentVolumeSource? = nil,
			cinder: core.v1.CinderPersistentVolumeSource? = nil,
			claimRef: core.v1.ObjectReference? = nil,
			csi: core.v1.CSIPersistentVolumeSource? = nil,
			fc: core.v1.FCVolumeSource? = nil,
			flexVolume: core.v1.FlexPersistentVolumeSource? = nil,
			flocker: core.v1.FlockerVolumeSource? = nil,
			gcePersistentDisk: core.v1.GCEPersistentDiskVolumeSource? = nil,
			glusterfs: core.v1.GlusterfsPersistentVolumeSource? = nil,
			hostPath: core.v1.HostPathVolumeSource? = nil,
			iscsi: core.v1.ISCSIPersistentVolumeSource? = nil,
			local: core.v1.LocalVolumeSource? = nil,
			mountOptions: [String]? = nil,
			nfs: core.v1.NFSVolumeSource? = nil,
			nodeAffinity: core.v1.VolumeNodeAffinity? = nil,
			persistentVolumeReclaimPolicy: String? = nil,
			photonPersistentDisk: core.v1.PhotonPersistentDiskVolumeSource? = nil,
			portworxVolume: core.v1.PortworxVolumeSource? = nil,
			quobyte: core.v1.QuobyteVolumeSource? = nil,
			rbd: core.v1.RBDPersistentVolumeSource? = nil,
			scaleIO: core.v1.ScaleIOPersistentVolumeSource? = nil,
			storageClassName: String? = nil,
			storageos: core.v1.StorageOSPersistentVolumeSource? = nil,
			volumeMode: String? = nil,
			vsphereVolume: core.v1.VsphereVirtualDiskVolumeSource? = nil
		) {
			self.accessModes = accessModes
			self.awsElasticBlockStore = awsElasticBlockStore
			self.azureDisk = azureDisk
			self.azureFile = azureFile
			self.capacity = capacity
			self.cephfs = cephfs
			self.cinder = cinder
			self.claimRef = claimRef
			self.csi = csi
			self.fc = fc
			self.flexVolume = flexVolume
			self.flocker = flocker
			self.gcePersistentDisk = gcePersistentDisk
			self.glusterfs = glusterfs
			self.hostPath = hostPath
			self.iscsi = iscsi
			self.local = local
			self.mountOptions = mountOptions
			self.nfs = nfs
			self.nodeAffinity = nodeAffinity
			self.persistentVolumeReclaimPolicy = persistentVolumeReclaimPolicy
			self.photonPersistentDisk = photonPersistentDisk
			self.portworxVolume = portworxVolume
			self.quobyte = quobyte
			self.rbd = rbd
			self.scaleIO = scaleIO
			self.storageClassName = storageClassName
			self.storageos = storageos
			self.volumeMode = volumeMode
			self.vsphereVolume = vsphereVolume
		}
	}
}

///
/// Codable conformance
///
public extension core.v1.PersistentVolumeSpec {

	private enum CodingKeys: String, CodingKey {

		case accessModes = "accessModes"
		case awsElasticBlockStore = "awsElasticBlockStore"
		case azureDisk = "azureDisk"
		case azureFile = "azureFile"
		case capacity = "capacity"
		case cephfs = "cephfs"
		case cinder = "cinder"
		case claimRef = "claimRef"
		case csi = "csi"
		case fc = "fc"
		case flexVolume = "flexVolume"
		case flocker = "flocker"
		case gcePersistentDisk = "gcePersistentDisk"
		case glusterfs = "glusterfs"
		case hostPath = "hostPath"
		case iscsi = "iscsi"
		case local = "local"
		case mountOptions = "mountOptions"
		case nfs = "nfs"
		case nodeAffinity = "nodeAffinity"
		case persistentVolumeReclaimPolicy = "persistentVolumeReclaimPolicy"
		case photonPersistentDisk = "photonPersistentDisk"
		case portworxVolume = "portworxVolume"
		case quobyte = "quobyte"
		case rbd = "rbd"
		case scaleIO = "scaleIO"
		case storageClassName = "storageClassName"
		case storageos = "storageos"
		case volumeMode = "volumeMode"
		case vsphereVolume = "vsphereVolume"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.accessModes = try container.decodeIfPresent([String].self, forKey: .accessModes)
		self.awsElasticBlockStore = try container.decodeIfPresent(core.v1.AWSElasticBlockStoreVolumeSource.self, forKey: .awsElasticBlockStore)
		self.azureDisk = try container.decodeIfPresent(core.v1.AzureDiskVolumeSource.self, forKey: .azureDisk)
		self.azureFile = try container.decodeIfPresent(core.v1.AzureFilePersistentVolumeSource.self, forKey: .azureFile)
		self.capacity = try container.decodeIfPresent([String: Quantity].self, forKey: .capacity)
		self.cephfs = try container.decodeIfPresent(core.v1.CephFSPersistentVolumeSource.self, forKey: .cephfs)
		self.cinder = try container.decodeIfPresent(core.v1.CinderPersistentVolumeSource.self, forKey: .cinder)
		self.claimRef = try container.decodeIfPresent(core.v1.ObjectReference.self, forKey: .claimRef)
		self.csi = try container.decodeIfPresent(core.v1.CSIPersistentVolumeSource.self, forKey: .csi)
		self.fc = try container.decodeIfPresent(core.v1.FCVolumeSource.self, forKey: .fc)
		self.flexVolume = try container.decodeIfPresent(core.v1.FlexPersistentVolumeSource.self, forKey: .flexVolume)
		self.flocker = try container.decodeIfPresent(core.v1.FlockerVolumeSource.self, forKey: .flocker)
		self.gcePersistentDisk = try container.decodeIfPresent(core.v1.GCEPersistentDiskVolumeSource.self, forKey: .gcePersistentDisk)
		self.glusterfs = try container.decodeIfPresent(core.v1.GlusterfsPersistentVolumeSource.self, forKey: .glusterfs)
		self.hostPath = try container.decodeIfPresent(core.v1.HostPathVolumeSource.self, forKey: .hostPath)
		self.iscsi = try container.decodeIfPresent(core.v1.ISCSIPersistentVolumeSource.self, forKey: .iscsi)
		self.local = try container.decodeIfPresent(core.v1.LocalVolumeSource.self, forKey: .local)
		self.mountOptions = try container.decodeIfPresent([String].self, forKey: .mountOptions)
		self.nfs = try container.decodeIfPresent(core.v1.NFSVolumeSource.self, forKey: .nfs)
		self.nodeAffinity = try container.decodeIfPresent(core.v1.VolumeNodeAffinity.self, forKey: .nodeAffinity)
		self.persistentVolumeReclaimPolicy = try container.decodeIfPresent(String.self, forKey: .persistentVolumeReclaimPolicy)
		self.photonPersistentDisk = try container.decodeIfPresent(core.v1.PhotonPersistentDiskVolumeSource.self, forKey: .photonPersistentDisk)
		self.portworxVolume = try container.decodeIfPresent(core.v1.PortworxVolumeSource.self, forKey: .portworxVolume)
		self.quobyte = try container.decodeIfPresent(core.v1.QuobyteVolumeSource.self, forKey: .quobyte)
		self.rbd = try container.decodeIfPresent(core.v1.RBDPersistentVolumeSource.self, forKey: .rbd)
		self.scaleIO = try container.decodeIfPresent(core.v1.ScaleIOPersistentVolumeSource.self, forKey: .scaleIO)
		self.storageClassName = try container.decodeIfPresent(String.self, forKey: .storageClassName)
		self.storageos = try container.decodeIfPresent(core.v1.StorageOSPersistentVolumeSource.self, forKey: .storageos)
		self.volumeMode = try container.decodeIfPresent(String.self, forKey: .volumeMode)
		self.vsphereVolume = try container.decodeIfPresent(core.v1.VsphereVirtualDiskVolumeSource.self, forKey: .vsphereVolume)
	}

	func encode(to encoder: Encoder) throws {
		var encodingContainer = encoder.container(keyedBy: CodingKeys.self)

		try encodingContainer.encode(accessModes, forKey: .accessModes)
		try encodingContainer.encode(awsElasticBlockStore, forKey: .awsElasticBlockStore)
		try encodingContainer.encode(azureDisk, forKey: .azureDisk)
		try encodingContainer.encode(azureFile, forKey: .azureFile)
		try encodingContainer.encode(capacity, forKey: .capacity)
		try encodingContainer.encode(cephfs, forKey: .cephfs)
		try encodingContainer.encode(cinder, forKey: .cinder)
		try encodingContainer.encode(claimRef, forKey: .claimRef)
		try encodingContainer.encode(csi, forKey: .csi)
		try encodingContainer.encode(fc, forKey: .fc)
		try encodingContainer.encode(flexVolume, forKey: .flexVolume)
		try encodingContainer.encode(flocker, forKey: .flocker)
		try encodingContainer.encode(gcePersistentDisk, forKey: .gcePersistentDisk)
		try encodingContainer.encode(glusterfs, forKey: .glusterfs)
		try encodingContainer.encode(hostPath, forKey: .hostPath)
		try encodingContainer.encode(iscsi, forKey: .iscsi)
		try encodingContainer.encode(local, forKey: .local)
		try encodingContainer.encode(mountOptions, forKey: .mountOptions)
		try encodingContainer.encode(nfs, forKey: .nfs)
		try encodingContainer.encode(nodeAffinity, forKey: .nodeAffinity)
		try encodingContainer.encode(persistentVolumeReclaimPolicy, forKey: .persistentVolumeReclaimPolicy)
		try encodingContainer.encode(photonPersistentDisk, forKey: .photonPersistentDisk)
		try encodingContainer.encode(portworxVolume, forKey: .portworxVolume)
		try encodingContainer.encode(quobyte, forKey: .quobyte)
		try encodingContainer.encode(rbd, forKey: .rbd)
		try encodingContainer.encode(scaleIO, forKey: .scaleIO)
		try encodingContainer.encode(storageClassName, forKey: .storageClassName)
		try encodingContainer.encode(storageos, forKey: .storageos)
		try encodingContainer.encode(volumeMode, forKey: .volumeMode)
		try encodingContainer.encode(vsphereVolume, forKey: .vsphereVolume)
	}
}
