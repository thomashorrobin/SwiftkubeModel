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
/// Kubernetes v1.24.10
///

import Foundation

public extension GroupVersionKind {

	/// Whether the resource is namespaced or not
	var namespaced: Bool {
		switch kind {

		case "Binding":
			return true
		case "ComponentStatus":
			return false
		case "ConfigMap":
			return true
		case "Endpoints":
			return true
		case "Event":
			return true
		case "LimitRange":
			return true
		case "Namespace":
			return false
		case "Node":
			return false
		case "PersistentVolume":
			return false
		case "PersistentVolumeClaim":
			return true
		case "Pod":
			return true
		case "PodTemplate":
			return true
		case "ReplicationController":
			return true
		case "ResourceQuota":
			return true
		case "Secret":
			return true
		case "Service":
			return true
		case "ServiceAccount":
			return true
		case "MutatingWebhookConfiguration":
			return false
		case "ValidatingWebhookConfiguration":
			return false
		case "CustomResourceDefinition":
			return false
		case "APIService":
			return false
		case "ControllerRevision":
			return true
		case "DaemonSet":
			return true
		case "Deployment":
			return true
		case "ReplicaSet":
			return true
		case "StatefulSet":
			return true
		case "TokenRequest":
			return true
		case "TokenReview":
			return false
		case "LocalSubjectAccessReview":
			return true
		case "SelfSubjectAccessReview":
			return false
		case "SelfSubjectRulesReview":
			return false
		case "SubjectAccessReview":
			return false
		case "HorizontalPodAutoscaler":
			return true
		case "CronJob":
			return true
		case "Job":
			return true
		case "CertificateSigningRequest":
			return false
		case "Lease":
			return true
		case "EndpointSlice":
			return true
		case "FlowSchema":
			return false
		case "PriorityLevelConfiguration":
			return false
		case "StorageVersion":
			return false
		case "Ingress":
			return true
		case "IngressClass":
			return false
		case "NetworkPolicy":
			return true
		case "RuntimeClass":
			return false
		case "PodDisruptionBudget":
			return true
		case "PodSecurityPolicy":
			return false
		case "ClusterRole":
			return false
		case "ClusterRoleBinding":
			return false
		case "Role":
			return true
		case "RoleBinding":
			return true
		case "PriorityClass":
			return false
		case "CSIDriver":
			return false
		case "CSINode":
			return false
		case "CSIStorageCapacity":
			return true
		case "StorageClass":
			return false
		case "VolumeAttachment":
			return false
		default:
			return false
		}
	}
}
