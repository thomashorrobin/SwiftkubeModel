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
	/// PodSpec is a description of a pod.
	///
	struct PodSpec: KubernetesResource {
		///
		/// Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
		///
		public var activeDeadlineSeconds: Int64?
		///
		/// If specified, the pod's scheduling constraints
		///
		public var affinity: core.v1.Affinity?
		///
		/// AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
		///
		public var automountServiceAccountToken: Bool?
		///
		/// List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
		///
		public var containers: [core.v1.Container]
		///
		/// Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.
		///
		public var dnsConfig: core.v1.PodDNSConfig?
		///
		/// Set DNS policy for the pod. Defaults to "ClusterFirst". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.
		///
		public var dnsPolicy: String?
		///
		/// EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.
		///
		public var enableServiceLinks: Bool?
		///
		/// List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource. This field is alpha-level and is only honored by servers that enable the EphemeralContainers feature.
		///
		public var ephemeralContainers: [core.v1.EphemeralContainer]?
		///
		/// HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.
		///
		public var hostAliases: [core.v1.HostAlias]?
		///
		/// Use the host's ipc namespace. Optional: Default to false.
		///
		public var hostIPC: Bool?
		///
		/// Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.
		///
		public var hostNetwork: Bool?
		///
		/// Use the host's pid namespace. Optional: Default to false.
		///
		public var hostPID: Bool?
		///
		/// Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
		///
		public var hostname: String?
		///
		/// ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod
		///
		public var imagePullSecrets: [core.v1.LocalObjectReference]?
		///
		/// List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/
		///
		public var initContainers: [core.v1.Container]?
		///
		/// NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.
		///
		public var nodeName: String?
		///
		/// NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
		///
		public var nodeSelector: [String: String]?
		///
		/// Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.16, and is only honored by servers that enable the PodOverhead feature.
		///
		public var overhead: [String: Quantity]?
		///
		/// PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. This field is alpha-level and is only honored by servers that enable the NonPreemptingPriority feature.
		///
		public var preemptionPolicy: String?
		///
		/// The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
		///
		public var priority: Int32?
		///
		/// If specified, indicates the pod's priority. "system-node-critical" and "system-cluster-critical" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
		///
		public var priorityClassName: String?
		///
		/// If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to "True" More info: https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md
		///
		public var readinessGates: [core.v1.PodReadinessGate]?
		///
		/// Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy
		///
		public var restartPolicy: String?
		///
		/// RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the "legacy" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md This is a beta feature as of Kubernetes v1.14.
		///
		public var runtimeClassName: String?
		///
		/// If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
		///
		public var schedulerName: String?
		///
		/// SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.
		///
		public var securityContext: core.v1.PodSecurityContext?
		///
		/// DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
		///
		public var serviceAccount: String?
		///
		/// ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
		///
		public var serviceAccountName: String?
		///
		/// Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false. This field is beta-level and may be disabled with the PodShareProcessNamespace feature.
		///
		public var shareProcessNamespace: Bool?
		///
		/// If specified, the fully qualified Pod hostname will be "<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>". If not specified, the pod will not have a domainname at all.
		///
		public var subdomain: String?
		///
		/// Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
		///
		public var terminationGracePeriodSeconds: Int64?
		///
		/// If specified, the pod's tolerations.
		///
		public var tolerations: [core.v1.Toleration]?
		///
		/// TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. This field is alpha-level and is only honored by clusters that enables the EvenPodsSpread feature. All topologySpreadConstraints are ANDed.
		///
		public var topologySpreadConstraints: [core.v1.TopologySpreadConstraint]?
		///
		/// List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes
		///
		public var volumes: [core.v1.Volume]?
		///
		/// Default memberwise initializer
		///
		public init(
			activeDeadlineSeconds: Int64?, 
			affinity: core.v1.Affinity?, 
			automountServiceAccountToken: Bool?, 
			containers: [core.v1.Container], 
			dnsConfig: core.v1.PodDNSConfig?, 
			dnsPolicy: String?, 
			enableServiceLinks: Bool?, 
			ephemeralContainers: [core.v1.EphemeralContainer]?, 
			hostAliases: [core.v1.HostAlias]?, 
			hostIPC: Bool?, 
			hostNetwork: Bool?, 
			hostPID: Bool?, 
			hostname: String?, 
			imagePullSecrets: [core.v1.LocalObjectReference]?, 
			initContainers: [core.v1.Container]?, 
			nodeName: String?, 
			nodeSelector: [String: String]?, 
			overhead: [String: Quantity]?, 
			preemptionPolicy: String?, 
			priority: Int32?, 
			priorityClassName: String?, 
			readinessGates: [core.v1.PodReadinessGate]?, 
			restartPolicy: String?, 
			runtimeClassName: String?, 
			schedulerName: String?, 
			securityContext: core.v1.PodSecurityContext?, 
			serviceAccount: String?, 
			serviceAccountName: String?, 
			shareProcessNamespace: Bool?, 
			subdomain: String?, 
			terminationGracePeriodSeconds: Int64?, 
			tolerations: [core.v1.Toleration]?, 
			topologySpreadConstraints: [core.v1.TopologySpreadConstraint]?, 
			volumes: [core.v1.Volume]?
		) {
			self.activeDeadlineSeconds = activeDeadlineSeconds
			self.affinity = affinity
			self.automountServiceAccountToken = automountServiceAccountToken
			self.containers = containers
			self.dnsConfig = dnsConfig
			self.dnsPolicy = dnsPolicy
			self.enableServiceLinks = enableServiceLinks
			self.ephemeralContainers = ephemeralContainers
			self.hostAliases = hostAliases
			self.hostIPC = hostIPC
			self.hostNetwork = hostNetwork
			self.hostPID = hostPID
			self.hostname = hostname
			self.imagePullSecrets = imagePullSecrets
			self.initContainers = initContainers
			self.nodeName = nodeName
			self.nodeSelector = nodeSelector
			self.overhead = overhead
			self.preemptionPolicy = preemptionPolicy
			self.priority = priority
			self.priorityClassName = priorityClassName
			self.readinessGates = readinessGates
			self.restartPolicy = restartPolicy
			self.runtimeClassName = runtimeClassName
			self.schedulerName = schedulerName
			self.securityContext = securityContext
			self.serviceAccount = serviceAccount
			self.serviceAccountName = serviceAccountName
			self.shareProcessNamespace = shareProcessNamespace
			self.subdomain = subdomain
			self.terminationGracePeriodSeconds = terminationGracePeriodSeconds
			self.tolerations = tolerations
			self.topologySpreadConstraints = topologySpreadConstraints
			self.volumes = volumes
		}
	}
}

