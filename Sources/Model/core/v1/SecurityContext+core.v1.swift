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
	/// SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext.  When both are set, the values in SecurityContext take precedence.
	///
	struct SecurityContext: KubernetesResource {
		///
		/// AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN
		///
		public var allowPrivilegeEscalation: Bool?
		///
		/// The capabilities to add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime.
		///
		public var capabilities: core.v1.Capabilities?
		///
		/// Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false.
		///
		public var privileged: Bool?
		///
		/// procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled.
		///
		public var procMount: String?
		///
		/// Whether this container has a read-only root filesystem. Default is false.
		///
		public var readOnlyRootFilesystem: Bool?
		///
		/// The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
		///
		public var runAsGroup: Int64?
		///
		/// Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
		///
		public var runAsNonRoot: Bool?
		///
		/// The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
		///
		public var runAsUser: Int64?
		///
		/// The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
		///
		public var seLinuxOptions: core.v1.SELinuxOptions?
		///
		/// The Windows specific settings applied to all containers. If unspecified, the options from the PodSecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
		///
		public var windowsOptions: core.v1.WindowsSecurityContextOptions?
		///
		/// Default memberwise initializer
		///
		public init(
			allowPrivilegeEscalation: Bool? = nil,
			capabilities: core.v1.Capabilities? = nil,
			privileged: Bool? = nil,
			procMount: String? = nil,
			readOnlyRootFilesystem: Bool? = nil,
			runAsGroup: Int64? = nil,
			runAsNonRoot: Bool? = nil,
			runAsUser: Int64? = nil,
			seLinuxOptions: core.v1.SELinuxOptions? = nil,
			windowsOptions: core.v1.WindowsSecurityContextOptions? = nil
		) {
			self.allowPrivilegeEscalation = allowPrivilegeEscalation
			self.capabilities = capabilities
			self.privileged = privileged
			self.procMount = procMount
			self.readOnlyRootFilesystem = readOnlyRootFilesystem
			self.runAsGroup = runAsGroup
			self.runAsNonRoot = runAsNonRoot
			self.runAsUser = runAsUser
			self.seLinuxOptions = seLinuxOptions
			self.windowsOptions = windowsOptions
		}
	}
}

///
/// Codable conformance
///
extension core.v1.SecurityContext {

	private enum CodingKeys: String, CodingKey {
		case allowPrivilegeEscalation = "allowPrivilegeEscalation"
		case capabilities = "capabilities"
		case privileged = "privileged"
		case procMount = "procMount"
		case readOnlyRootFilesystem = "readOnlyRootFilesystem"
		case runAsGroup = "runAsGroup"
		case runAsNonRoot = "runAsNonRoot"
		case runAsUser = "runAsUser"
		case seLinuxOptions = "seLinuxOptions"
		case windowsOptions = "windowsOptions"
	}

}

