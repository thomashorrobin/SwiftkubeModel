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
///

import Foundation

///
/// GroupVersionKind unambiguously identifies a kind.
///
public enum GroupVersionKind: String, CaseIterable {

	case coreV1Binding = "v1/Binding"
	case coreV1ComponentStatus = "v1/ComponentStatus"
	case coreV1ConfigMap = "v1/ConfigMap"
	case coreV1Endpoints = "v1/Endpoints"
	case coreV1Event = "v1/Event"
	case coreV1LimitRange = "v1/LimitRange"
	case coreV1Namespace = "v1/Namespace"
	case coreV1Node = "v1/Node"
	case coreV1PersistentVolume = "v1/PersistentVolume"
	case coreV1PersistentVolumeClaim = "v1/PersistentVolumeClaim"
	case coreV1Pod = "v1/Pod"
	case coreV1PodTemplate = "v1/PodTemplate"
	case coreV1ReplicationController = "v1/ReplicationController"
	case coreV1ResourceQuota = "v1/ResourceQuota"
	case coreV1Secret = "v1/Secret"
	case coreV1Service = "v1/Service"
	case coreV1ServiceAccount = "v1/ServiceAccount"
	case admissionregistrationV1MutatingWebhookConfiguration = "admissionregistration.k8s.io/v1/MutatingWebhookConfiguration"
	case admissionregistrationV1ValidatingWebhookConfiguration = "admissionregistration.k8s.io/v1/ValidatingWebhookConfiguration"
	case admissionregistrationV1Beta1MutatingWebhookConfiguration = "admissionregistration.k8s.io/v1beta1/MutatingWebhookConfiguration"
	case admissionregistrationV1Beta1ValidatingWebhookConfiguration = "admissionregistration.k8s.io/v1beta1/ValidatingWebhookConfiguration"
	case apiextensionsV1CustomResourceDefinition = "apiextensions.k8s.io/v1/CustomResourceDefinition"
	case apiextensionsV1Beta1CustomResourceDefinition = "apiextensions.k8s.io/v1beta1/CustomResourceDefinition"
	case apiregistrationV1APIService = "apiregistration.k8s.io/v1/APIService"
	case apiregistrationV1Beta1APIService = "apiregistration.k8s.io/v1beta1/APIService"
	case appsV1ControllerRevision = "apps/v1/ControllerRevision"
	case appsV1DaemonSet = "apps/v1/DaemonSet"
	case appsV1Deployment = "apps/v1/Deployment"
	case appsV1ReplicaSet = "apps/v1/ReplicaSet"
	case appsV1StatefulSet = "apps/v1/StatefulSet"
	case authenticationV1TokenReview = "authentication.k8s.io/v1/TokenReview"
	case authenticationV1Beta1TokenReview = "authentication.k8s.io/v1beta1/TokenReview"
	case authorizationV1LocalSubjectAccessReview = "authorization.k8s.io/v1/LocalSubjectAccessReview"
	case authorizationV1SelfSubjectAccessReview = "authorization.k8s.io/v1/SelfSubjectAccessReview"
	case authorizationV1SelfSubjectRulesReview = "authorization.k8s.io/v1/SelfSubjectRulesReview"
	case authorizationV1SubjectAccessReview = "authorization.k8s.io/v1/SubjectAccessReview"
	case authorizationV1Beta1LocalSubjectAccessReview = "authorization.k8s.io/v1beta1/LocalSubjectAccessReview"
	case authorizationV1Beta1SelfSubjectAccessReview = "authorization.k8s.io/v1beta1/SelfSubjectAccessReview"
	case authorizationV1Beta1SelfSubjectRulesReview = "authorization.k8s.io/v1beta1/SelfSubjectRulesReview"
	case authorizationV1Beta1SubjectAccessReview = "authorization.k8s.io/v1beta1/SubjectAccessReview"
	case autoscalingV1HorizontalPodAutoscaler = "autoscaling/v1/HorizontalPodAutoscaler"
	case autoscalingV2Beta2HorizontalPodAutoscaler = "autoscaling/v2beta2/HorizontalPodAutoscaler"
	case autoscalingV2Beta1HorizontalPodAutoscaler = "autoscaling/v2beta1/HorizontalPodAutoscaler"
	case batchV1Job = "batch/v1/Job"
	case batchV1Beta1CronJob = "batch/v1beta1/CronJob"
	case batchV2Alpha1CronJob = "batch/v2alpha1/CronJob"
	case certificatesV1Beta1CertificateSigningRequest = "certificates.k8s.io/v1beta1/CertificateSigningRequest"
	case coordinationV1Lease = "coordination.k8s.io/v1/Lease"
	case coordinationV1Beta1Lease = "coordination.k8s.io/v1beta1/Lease"
	case discoveryV1Beta1EndpointSlice = "discovery.k8s.io/v1beta1/EndpointSlice"
	case eventsV1Beta1Event = "events.k8s.io/v1beta1/Event"
	case extensionsV1Beta1Ingress = "extensions/v1beta1/Ingress"
	case networkingV1NetworkPolicy = "networking.k8s.io/v1/NetworkPolicy"
	case networkingV1Beta1Ingress = "networking.k8s.io/v1beta1/Ingress"
	case networkingV1Beta1IngressClass = "networking.k8s.io/v1beta1/IngressClass"
	case nodeV1Beta1RuntimeClass = "node.k8s.io/v1beta1/RuntimeClass"
	case nodeV1Alpha1RuntimeClass = "node.k8s.io/v1alpha1/RuntimeClass"
	case policyV1Beta1PodDisruptionBudget = "policy/v1beta1/PodDisruptionBudget"
	case policyV1Beta1PodSecurityPolicy = "policy/v1beta1/PodSecurityPolicy"
	case rbacV1ClusterRole = "rbac.authorization.k8s.io/v1/ClusterRole"
	case rbacV1ClusterRoleBinding = "rbac.authorization.k8s.io/v1/ClusterRoleBinding"
	case rbacV1Role = "rbac.authorization.k8s.io/v1/Role"
	case rbacV1RoleBinding = "rbac.authorization.k8s.io/v1/RoleBinding"
	case rbacV1Beta1ClusterRole = "rbac.authorization.k8s.io/v1beta1/ClusterRole"
	case rbacV1Beta1ClusterRoleBinding = "rbac.authorization.k8s.io/v1beta1/ClusterRoleBinding"
	case rbacV1Beta1Role = "rbac.authorization.k8s.io/v1beta1/Role"
	case rbacV1Beta1RoleBinding = "rbac.authorization.k8s.io/v1beta1/RoleBinding"
	case rbacV1Alpha1ClusterRole = "rbac.authorization.k8s.io/v1alpha1/ClusterRole"
	case rbacV1Alpha1ClusterRoleBinding = "rbac.authorization.k8s.io/v1alpha1/ClusterRoleBinding"
	case rbacV1Alpha1Role = "rbac.authorization.k8s.io/v1alpha1/Role"
	case rbacV1Alpha1RoleBinding = "rbac.authorization.k8s.io/v1alpha1/RoleBinding"
	case schedulingV1PriorityClass = "scheduling.k8s.io/v1/PriorityClass"
	case schedulingV1Beta1PriorityClass = "scheduling.k8s.io/v1beta1/PriorityClass"
	case schedulingV1Alpha1PriorityClass = "scheduling.k8s.io/v1alpha1/PriorityClass"
	case storageV1CSIDriver = "storage.k8s.io/v1/CSIDriver"
	case storageV1CSINode = "storage.k8s.io/v1/CSINode"
	case storageV1StorageClass = "storage.k8s.io/v1/StorageClass"
	case storageV1VolumeAttachment = "storage.k8s.io/v1/VolumeAttachment"
	case storageV1Beta1CSIDriver = "storage.k8s.io/v1beta1/CSIDriver"
	case storageV1Beta1CSINode = "storage.k8s.io/v1beta1/CSINode"
	case storageV1Beta1StorageClass = "storage.k8s.io/v1beta1/StorageClass"
	case storageV1Beta1VolumeAttachment = "storage.k8s.io/v1beta1/VolumeAttachment"
	case storageV1Alpha1VolumeAttachment = "storage.k8s.io/v1alpha1/VolumeAttachment"

	/// The group of this GroupVersionKind
	public var group: String {
		switch self {

		case .coreV1Binding:
			return "core"
		case .coreV1ComponentStatus:
			return "core"
		case .coreV1ConfigMap:
			return "core"
		case .coreV1Endpoints:
			return "core"
		case .coreV1Event:
			return "core"
		case .coreV1LimitRange:
			return "core"
		case .coreV1Namespace:
			return "core"
		case .coreV1Node:
			return "core"
		case .coreV1PersistentVolume:
			return "core"
		case .coreV1PersistentVolumeClaim:
			return "core"
		case .coreV1Pod:
			return "core"
		case .coreV1PodTemplate:
			return "core"
		case .coreV1ReplicationController:
			return "core"
		case .coreV1ResourceQuota:
			return "core"
		case .coreV1Secret:
			return "core"
		case .coreV1Service:
			return "core"
		case .coreV1ServiceAccount:
			return "core"
		case .admissionregistrationV1MutatingWebhookConfiguration:
			return "admissionregistration.k8s.io"
		case .admissionregistrationV1ValidatingWebhookConfiguration:
			return "admissionregistration.k8s.io"
		case .admissionregistrationV1Beta1MutatingWebhookConfiguration:
			return "admissionregistration.k8s.io"
		case .admissionregistrationV1Beta1ValidatingWebhookConfiguration:
			return "admissionregistration.k8s.io"
		case .apiextensionsV1CustomResourceDefinition:
			return "apiextensions.k8s.io"
		case .apiextensionsV1Beta1CustomResourceDefinition:
			return "apiextensions.k8s.io"
		case .apiregistrationV1APIService:
			return "apiregistration.k8s.io"
		case .apiregistrationV1Beta1APIService:
			return "apiregistration.k8s.io"
		case .appsV1ControllerRevision:
			return "apps"
		case .appsV1DaemonSet:
			return "apps"
		case .appsV1Deployment:
			return "apps"
		case .appsV1ReplicaSet:
			return "apps"
		case .appsV1StatefulSet:
			return "apps"
		case .authenticationV1TokenReview:
			return "authentication.k8s.io"
		case .authenticationV1Beta1TokenReview:
			return "authentication.k8s.io"
		case .authorizationV1LocalSubjectAccessReview:
			return "authorization.k8s.io"
		case .authorizationV1SelfSubjectAccessReview:
			return "authorization.k8s.io"
		case .authorizationV1SelfSubjectRulesReview:
			return "authorization.k8s.io"
		case .authorizationV1SubjectAccessReview:
			return "authorization.k8s.io"
		case .authorizationV1Beta1LocalSubjectAccessReview:
			return "authorization.k8s.io"
		case .authorizationV1Beta1SelfSubjectAccessReview:
			return "authorization.k8s.io"
		case .authorizationV1Beta1SelfSubjectRulesReview:
			return "authorization.k8s.io"
		case .authorizationV1Beta1SubjectAccessReview:
			return "authorization.k8s.io"
		case .autoscalingV1HorizontalPodAutoscaler:
			return "autoscaling"
		case .autoscalingV2Beta2HorizontalPodAutoscaler:
			return "autoscaling"
		case .autoscalingV2Beta1HorizontalPodAutoscaler:
			return "autoscaling"
		case .batchV1Job:
			return "batch"
		case .batchV1Beta1CronJob:
			return "batch"
		case .batchV2Alpha1CronJob:
			return "batch"
		case .certificatesV1Beta1CertificateSigningRequest:
			return "certificates.k8s.io"
		case .coordinationV1Lease:
			return "coordination.k8s.io"
		case .coordinationV1Beta1Lease:
			return "coordination.k8s.io"
		case .discoveryV1Beta1EndpointSlice:
			return "discovery.k8s.io"
		case .eventsV1Beta1Event:
			return "events.k8s.io"
		case .extensionsV1Beta1Ingress:
			return "extensions"
		case .networkingV1NetworkPolicy:
			return "networking.k8s.io"
		case .networkingV1Beta1Ingress:
			return "networking.k8s.io"
		case .networkingV1Beta1IngressClass:
			return "networking.k8s.io"
		case .nodeV1Beta1RuntimeClass:
			return "node.k8s.io"
		case .nodeV1Alpha1RuntimeClass:
			return "node.k8s.io"
		case .policyV1Beta1PodDisruptionBudget:
			return "policy"
		case .policyV1Beta1PodSecurityPolicy:
			return "policy"
		case .rbacV1ClusterRole:
			return "rbac.authorization.k8s.io"
		case .rbacV1ClusterRoleBinding:
			return "rbac.authorization.k8s.io"
		case .rbacV1Role:
			return "rbac.authorization.k8s.io"
		case .rbacV1RoleBinding:
			return "rbac.authorization.k8s.io"
		case .rbacV1Beta1ClusterRole:
			return "rbac.authorization.k8s.io"
		case .rbacV1Beta1ClusterRoleBinding:
			return "rbac.authorization.k8s.io"
		case .rbacV1Beta1Role:
			return "rbac.authorization.k8s.io"
		case .rbacV1Beta1RoleBinding:
			return "rbac.authorization.k8s.io"
		case .rbacV1Alpha1ClusterRole:
			return "rbac.authorization.k8s.io"
		case .rbacV1Alpha1ClusterRoleBinding:
			return "rbac.authorization.k8s.io"
		case .rbacV1Alpha1Role:
			return "rbac.authorization.k8s.io"
		case .rbacV1Alpha1RoleBinding:
			return "rbac.authorization.k8s.io"
		case .schedulingV1PriorityClass:
			return "scheduling.k8s.io"
		case .schedulingV1Beta1PriorityClass:
			return "scheduling.k8s.io"
		case .schedulingV1Alpha1PriorityClass:
			return "scheduling.k8s.io"
		case .storageV1CSIDriver:
			return "storage.k8s.io"
		case .storageV1CSINode:
			return "storage.k8s.io"
		case .storageV1StorageClass:
			return "storage.k8s.io"
		case .storageV1VolumeAttachment:
			return "storage.k8s.io"
		case .storageV1Beta1CSIDriver:
			return "storage.k8s.io"
		case .storageV1Beta1CSINode:
			return "storage.k8s.io"
		case .storageV1Beta1StorageClass:
			return "storage.k8s.io"
		case .storageV1Beta1VolumeAttachment:
			return "storage.k8s.io"
		case .storageV1Alpha1VolumeAttachment:
			return "storage.k8s.io"
		}
	}

	/// The version of this GroupVersionKind
	public var version: String {
		switch self {

		case .coreV1Binding:
			return "v1"
		case .coreV1ComponentStatus:
			return "v1"
		case .coreV1ConfigMap:
			return "v1"
		case .coreV1Endpoints:
			return "v1"
		case .coreV1Event:
			return "v1"
		case .coreV1LimitRange:
			return "v1"
		case .coreV1Namespace:
			return "v1"
		case .coreV1Node:
			return "v1"
		case .coreV1PersistentVolume:
			return "v1"
		case .coreV1PersistentVolumeClaim:
			return "v1"
		case .coreV1Pod:
			return "v1"
		case .coreV1PodTemplate:
			return "v1"
		case .coreV1ReplicationController:
			return "v1"
		case .coreV1ResourceQuota:
			return "v1"
		case .coreV1Secret:
			return "v1"
		case .coreV1Service:
			return "v1"
		case .coreV1ServiceAccount:
			return "v1"
		case .admissionregistrationV1MutatingWebhookConfiguration:
			return "v1"
		case .admissionregistrationV1ValidatingWebhookConfiguration:
			return "v1"
		case .admissionregistrationV1Beta1MutatingWebhookConfiguration:
			return "v1beta1"
		case .admissionregistrationV1Beta1ValidatingWebhookConfiguration:
			return "v1beta1"
		case .apiextensionsV1CustomResourceDefinition:
			return "v1"
		case .apiextensionsV1Beta1CustomResourceDefinition:
			return "v1beta1"
		case .apiregistrationV1APIService:
			return "v1"
		case .apiregistrationV1Beta1APIService:
			return "v1beta1"
		case .appsV1ControllerRevision:
			return "v1"
		case .appsV1DaemonSet:
			return "v1"
		case .appsV1Deployment:
			return "v1"
		case .appsV1ReplicaSet:
			return "v1"
		case .appsV1StatefulSet:
			return "v1"
		case .authenticationV1TokenReview:
			return "v1"
		case .authenticationV1Beta1TokenReview:
			return "v1beta1"
		case .authorizationV1LocalSubjectAccessReview:
			return "v1"
		case .authorizationV1SelfSubjectAccessReview:
			return "v1"
		case .authorizationV1SelfSubjectRulesReview:
			return "v1"
		case .authorizationV1SubjectAccessReview:
			return "v1"
		case .authorizationV1Beta1LocalSubjectAccessReview:
			return "v1beta1"
		case .authorizationV1Beta1SelfSubjectAccessReview:
			return "v1beta1"
		case .authorizationV1Beta1SelfSubjectRulesReview:
			return "v1beta1"
		case .authorizationV1Beta1SubjectAccessReview:
			return "v1beta1"
		case .autoscalingV1HorizontalPodAutoscaler:
			return "v1"
		case .autoscalingV2Beta2HorizontalPodAutoscaler:
			return "v2beta2"
		case .autoscalingV2Beta1HorizontalPodAutoscaler:
			return "v2beta1"
		case .batchV1Job:
			return "v1"
		case .batchV1Beta1CronJob:
			return "v1beta1"
		case .batchV2Alpha1CronJob:
			return "v2alpha1"
		case .certificatesV1Beta1CertificateSigningRequest:
			return "v1beta1"
		case .coordinationV1Lease:
			return "v1"
		case .coordinationV1Beta1Lease:
			return "v1beta1"
		case .discoveryV1Beta1EndpointSlice:
			return "v1beta1"
		case .eventsV1Beta1Event:
			return "v1beta1"
		case .extensionsV1Beta1Ingress:
			return "v1beta1"
		case .networkingV1NetworkPolicy:
			return "v1"
		case .networkingV1Beta1Ingress:
			return "v1beta1"
		case .networkingV1Beta1IngressClass:
			return "v1beta1"
		case .nodeV1Beta1RuntimeClass:
			return "v1beta1"
		case .nodeV1Alpha1RuntimeClass:
			return "v1alpha1"
		case .policyV1Beta1PodDisruptionBudget:
			return "v1beta1"
		case .policyV1Beta1PodSecurityPolicy:
			return "v1beta1"
		case .rbacV1ClusterRole:
			return "v1"
		case .rbacV1ClusterRoleBinding:
			return "v1"
		case .rbacV1Role:
			return "v1"
		case .rbacV1RoleBinding:
			return "v1"
		case .rbacV1Beta1ClusterRole:
			return "v1beta1"
		case .rbacV1Beta1ClusterRoleBinding:
			return "v1beta1"
		case .rbacV1Beta1Role:
			return "v1beta1"
		case .rbacV1Beta1RoleBinding:
			return "v1beta1"
		case .rbacV1Alpha1ClusterRole:
			return "v1alpha1"
		case .rbacV1Alpha1ClusterRoleBinding:
			return "v1alpha1"
		case .rbacV1Alpha1Role:
			return "v1alpha1"
		case .rbacV1Alpha1RoleBinding:
			return "v1alpha1"
		case .schedulingV1PriorityClass:
			return "v1"
		case .schedulingV1Beta1PriorityClass:
			return "v1beta1"
		case .schedulingV1Alpha1PriorityClass:
			return "v1alpha1"
		case .storageV1CSIDriver:
			return "v1"
		case .storageV1CSINode:
			return "v1"
		case .storageV1StorageClass:
			return "v1"
		case .storageV1VolumeAttachment:
			return "v1"
		case .storageV1Beta1CSIDriver:
			return "v1beta1"
		case .storageV1Beta1CSINode:
			return "v1beta1"
		case .storageV1Beta1StorageClass:
			return "v1beta1"
		case .storageV1Beta1VolumeAttachment:
			return "v1beta1"
		case .storageV1Alpha1VolumeAttachment:
			return "v1alpha1"
		}
	}

	/// The kind of this GroupVersionKind
	public var kind: String {
		switch self {

		case .coreV1Binding:
			return "Binding"
		case .coreV1ComponentStatus:
			return "ComponentStatus"
		case .coreV1ConfigMap:
			return "ConfigMap"
		case .coreV1Endpoints:
			return "Endpoints"
		case .coreV1Event:
			return "Event"
		case .coreV1LimitRange:
			return "LimitRange"
		case .coreV1Namespace:
			return "Namespace"
		case .coreV1Node:
			return "Node"
		case .coreV1PersistentVolume:
			return "PersistentVolume"
		case .coreV1PersistentVolumeClaim:
			return "PersistentVolumeClaim"
		case .coreV1Pod:
			return "Pod"
		case .coreV1PodTemplate:
			return "PodTemplate"
		case .coreV1ReplicationController:
			return "ReplicationController"
		case .coreV1ResourceQuota:
			return "ResourceQuota"
		case .coreV1Secret:
			return "Secret"
		case .coreV1Service:
			return "Service"
		case .coreV1ServiceAccount:
			return "ServiceAccount"
		case .admissionregistrationV1MutatingWebhookConfiguration:
			return "MutatingWebhookConfiguration"
		case .admissionregistrationV1ValidatingWebhookConfiguration:
			return "ValidatingWebhookConfiguration"
		case .admissionregistrationV1Beta1MutatingWebhookConfiguration:
			return "MutatingWebhookConfiguration"
		case .admissionregistrationV1Beta1ValidatingWebhookConfiguration:
			return "ValidatingWebhookConfiguration"
		case .apiextensionsV1CustomResourceDefinition:
			return "CustomResourceDefinition"
		case .apiextensionsV1Beta1CustomResourceDefinition:
			return "CustomResourceDefinition"
		case .apiregistrationV1APIService:
			return "APIService"
		case .apiregistrationV1Beta1APIService:
			return "APIService"
		case .appsV1ControllerRevision:
			return "ControllerRevision"
		case .appsV1DaemonSet:
			return "DaemonSet"
		case .appsV1Deployment:
			return "Deployment"
		case .appsV1ReplicaSet:
			return "ReplicaSet"
		case .appsV1StatefulSet:
			return "StatefulSet"
		case .authenticationV1TokenReview:
			return "TokenReview"
		case .authenticationV1Beta1TokenReview:
			return "TokenReview"
		case .authorizationV1LocalSubjectAccessReview:
			return "LocalSubjectAccessReview"
		case .authorizationV1SelfSubjectAccessReview:
			return "SelfSubjectAccessReview"
		case .authorizationV1SelfSubjectRulesReview:
			return "SelfSubjectRulesReview"
		case .authorizationV1SubjectAccessReview:
			return "SubjectAccessReview"
		case .authorizationV1Beta1LocalSubjectAccessReview:
			return "LocalSubjectAccessReview"
		case .authorizationV1Beta1SelfSubjectAccessReview:
			return "SelfSubjectAccessReview"
		case .authorizationV1Beta1SelfSubjectRulesReview:
			return "SelfSubjectRulesReview"
		case .authorizationV1Beta1SubjectAccessReview:
			return "SubjectAccessReview"
		case .autoscalingV1HorizontalPodAutoscaler:
			return "HorizontalPodAutoscaler"
		case .autoscalingV2Beta2HorizontalPodAutoscaler:
			return "HorizontalPodAutoscaler"
		case .autoscalingV2Beta1HorizontalPodAutoscaler:
			return "HorizontalPodAutoscaler"
		case .batchV1Job:
			return "Job"
		case .batchV1Beta1CronJob:
			return "CronJob"
		case .batchV2Alpha1CronJob:
			return "CronJob"
		case .certificatesV1Beta1CertificateSigningRequest:
			return "CertificateSigningRequest"
		case .coordinationV1Lease:
			return "Lease"
		case .coordinationV1Beta1Lease:
			return "Lease"
		case .discoveryV1Beta1EndpointSlice:
			return "EndpointSlice"
		case .eventsV1Beta1Event:
			return "Event"
		case .extensionsV1Beta1Ingress:
			return "Ingress"
		case .networkingV1NetworkPolicy:
			return "NetworkPolicy"
		case .networkingV1Beta1Ingress:
			return "Ingress"
		case .networkingV1Beta1IngressClass:
			return "IngressClass"
		case .nodeV1Beta1RuntimeClass:
			return "RuntimeClass"
		case .nodeV1Alpha1RuntimeClass:
			return "RuntimeClass"
		case .policyV1Beta1PodDisruptionBudget:
			return "PodDisruptionBudget"
		case .policyV1Beta1PodSecurityPolicy:
			return "PodSecurityPolicy"
		case .rbacV1ClusterRole:
			return "ClusterRole"
		case .rbacV1ClusterRoleBinding:
			return "ClusterRoleBinding"
		case .rbacV1Role:
			return "Role"
		case .rbacV1RoleBinding:
			return "RoleBinding"
		case .rbacV1Beta1ClusterRole:
			return "ClusterRole"
		case .rbacV1Beta1ClusterRoleBinding:
			return "ClusterRoleBinding"
		case .rbacV1Beta1Role:
			return "Role"
		case .rbacV1Beta1RoleBinding:
			return "RoleBinding"
		case .rbacV1Alpha1ClusterRole:
			return "ClusterRole"
		case .rbacV1Alpha1ClusterRoleBinding:
			return "ClusterRoleBinding"
		case .rbacV1Alpha1Role:
			return "Role"
		case .rbacV1Alpha1RoleBinding:
			return "RoleBinding"
		case .schedulingV1PriorityClass:
			return "PriorityClass"
		case .schedulingV1Beta1PriorityClass:
			return "PriorityClass"
		case .schedulingV1Alpha1PriorityClass:
			return "PriorityClass"
		case .storageV1CSIDriver:
			return "CSIDriver"
		case .storageV1CSINode:
			return "CSINode"
		case .storageV1StorageClass:
			return "StorageClass"
		case .storageV1VolumeAttachment:
			return "VolumeAttachment"
		case .storageV1Beta1CSIDriver:
			return "CSIDriver"
		case .storageV1Beta1CSINode:
			return "CSINode"
		case .storageV1Beta1StorageClass:
			return "StorageClass"
		case .storageV1Beta1VolumeAttachment:
			return "VolumeAttachment"
		case .storageV1Alpha1VolumeAttachment:
			return "VolumeAttachment"
		}
	}

	/// The API Version of this GroupVersionKind.
	public var apiVersion: String {
		if group == "core" {
			return version
		} else {
			return "\(group)/\(version)"
		}
	}

	/// The kind of this GroupVersionKind
	public var pluralName: String {
		switch self {

		case .coreV1Binding:
			return "bindings"
		case .coreV1ComponentStatus:
			return "componentstatuses"
		case .coreV1ConfigMap:
			return "configmaps"
		case .coreV1Endpoints:
			return "endpoints"
		case .coreV1Event:
			return "events"
		case .coreV1LimitRange:
			return "limitranges"
		case .coreV1Namespace:
			return "namespaces"
		case .coreV1Node:
			return "nodes"
		case .coreV1PersistentVolume:
			return "persistentvolumes"
		case .coreV1PersistentVolumeClaim:
			return "persistentvolumeclaims"
		case .coreV1Pod:
			return "pods"
		case .coreV1PodTemplate:
			return "podtemplates"
		case .coreV1ReplicationController:
			return "replicationcontrollers"
		case .coreV1ResourceQuota:
			return "resourcequotas"
		case .coreV1Secret:
			return "secrets"
		case .coreV1Service:
			return "services"
		case .coreV1ServiceAccount:
			return "serviceaccounts"
		case .admissionregistrationV1MutatingWebhookConfiguration:
			return "mutatingwebhookconfigurations"
		case .admissionregistrationV1ValidatingWebhookConfiguration:
			return "validatingwebhookconfigurations"
		case .admissionregistrationV1Beta1MutatingWebhookConfiguration:
			return "mutatingwebhookconfigurations"
		case .admissionregistrationV1Beta1ValidatingWebhookConfiguration:
			return "validatingwebhookconfigurations"
		case .apiextensionsV1CustomResourceDefinition:
			return "customresourcedefinitions"
		case .apiextensionsV1Beta1CustomResourceDefinition:
			return "customresourcedefinitions"
		case .apiregistrationV1APIService:
			return "apiservices"
		case .apiregistrationV1Beta1APIService:
			return "apiservices"
		case .appsV1ControllerRevision:
			return "controllerrevisions"
		case .appsV1DaemonSet:
			return "daemonsets"
		case .appsV1Deployment:
			return "deployments"
		case .appsV1ReplicaSet:
			return "replicasets"
		case .appsV1StatefulSet:
			return "statefulsets"
		case .authenticationV1TokenReview:
			return "tokenreviews"
		case .authenticationV1Beta1TokenReview:
			return "tokenreviews"
		case .authorizationV1LocalSubjectAccessReview:
			return "localsubjectaccessreviews"
		case .authorizationV1SelfSubjectAccessReview:
			return "selfsubjectaccessreviews"
		case .authorizationV1SelfSubjectRulesReview:
			return "selfsubjectrulesreviews"
		case .authorizationV1SubjectAccessReview:
			return "subjectaccessreviews"
		case .authorizationV1Beta1LocalSubjectAccessReview:
			return "localsubjectaccessreviews"
		case .authorizationV1Beta1SelfSubjectAccessReview:
			return "selfsubjectaccessreviews"
		case .authorizationV1Beta1SelfSubjectRulesReview:
			return "selfsubjectrulesreviews"
		case .authorizationV1Beta1SubjectAccessReview:
			return "subjectaccessreviews"
		case .autoscalingV1HorizontalPodAutoscaler:
			return "horizontalpodautoscalers"
		case .autoscalingV2Beta2HorizontalPodAutoscaler:
			return "horizontalpodautoscalers"
		case .autoscalingV2Beta1HorizontalPodAutoscaler:
			return "horizontalpodautoscalers"
		case .batchV1Job:
			return "jobs"
		case .batchV1Beta1CronJob:
			return "cronjobs"
		case .batchV2Alpha1CronJob:
			return "cronjobs"
		case .certificatesV1Beta1CertificateSigningRequest:
			return "certificatesigningrequests"
		case .coordinationV1Lease:
			return "leases"
		case .coordinationV1Beta1Lease:
			return "leases"
		case .discoveryV1Beta1EndpointSlice:
			return "endpointslices"
		case .eventsV1Beta1Event:
			return "events"
		case .extensionsV1Beta1Ingress:
			return "ingresses"
		case .networkingV1NetworkPolicy:
			return "networkpolicies"
		case .networkingV1Beta1Ingress:
			return "ingresses"
		case .networkingV1Beta1IngressClass:
			return "ingressclasses"
		case .nodeV1Beta1RuntimeClass:
			return "runtimeclasses"
		case .nodeV1Alpha1RuntimeClass:
			return "runtimeclasses"
		case .policyV1Beta1PodDisruptionBudget:
			return "poddisruptionbudgets"
		case .policyV1Beta1PodSecurityPolicy:
			return "podsecuritypolicies"
		case .rbacV1ClusterRole:
			return "clusterroles"
		case .rbacV1ClusterRoleBinding:
			return "clusterrolebindings"
		case .rbacV1Role:
			return "roles"
		case .rbacV1RoleBinding:
			return "rolebindings"
		case .rbacV1Beta1ClusterRole:
			return "clusterroles"
		case .rbacV1Beta1ClusterRoleBinding:
			return "clusterrolebindings"
		case .rbacV1Beta1Role:
			return "roles"
		case .rbacV1Beta1RoleBinding:
			return "rolebindings"
		case .rbacV1Alpha1ClusterRole:
			return "clusterroles"
		case .rbacV1Alpha1ClusterRoleBinding:
			return "clusterrolebindings"
		case .rbacV1Alpha1Role:
			return "roles"
		case .rbacV1Alpha1RoleBinding:
			return "rolebindings"
		case .schedulingV1PriorityClass:
			return "priorityclasses"
		case .schedulingV1Beta1PriorityClass:
			return "priorityclasses"
		case .schedulingV1Alpha1PriorityClass:
			return "priorityclasses"
		case .storageV1CSIDriver:
			return "csidrivers"
		case .storageV1CSINode:
			return "csinodes"
		case .storageV1StorageClass:
			return "storageclasses"
		case .storageV1VolumeAttachment:
			return "volumeattachments"
		case .storageV1Beta1CSIDriver:
			return "csidrivers"
		case .storageV1Beta1CSINode:
			return "csinodes"
		case .storageV1Beta1StorageClass:
			return "storageclasses"
		case .storageV1Beta1VolumeAttachment:
			return "volumeattachments"
		case .storageV1Alpha1VolumeAttachment:
			return "volumeattachments"
		}
	}

	/// The kind of this GroupVersionKind
	public var shortName: String? {
		switch self {

		case .coreV1Binding:
			return nil
		case .coreV1ComponentStatus:
			return "cs"
		case .coreV1ConfigMap:
			return "cm"
		case .coreV1Endpoints:
			return "ep"
		case .coreV1Event:
			return "ev"
		case .coreV1LimitRange:
			return "limits"
		case .coreV1Namespace:
			return "ns"
		case .coreV1Node:
			return "no"
		case .coreV1PersistentVolume:
			return "pv"
		case .coreV1PersistentVolumeClaim:
			return "pvc"
		case .coreV1Pod:
			return "po"
		case .coreV1PodTemplate:
			return nil
		case .coreV1ReplicationController:
			return "rc"
		case .coreV1ResourceQuota:
			return "quota"
		case .coreV1Secret:
			return nil
		case .coreV1Service:
			return "svc"
		case .coreV1ServiceAccount:
			return "sa"
		case .admissionregistrationV1MutatingWebhookConfiguration:
			return nil
		case .admissionregistrationV1ValidatingWebhookConfiguration:
			return nil
		case .admissionregistrationV1Beta1MutatingWebhookConfiguration:
			return nil
		case .admissionregistrationV1Beta1ValidatingWebhookConfiguration:
			return nil
		case .apiextensionsV1CustomResourceDefinition:
			return "crd"
		case .apiextensionsV1Beta1CustomResourceDefinition:
			return "crd"
		case .apiregistrationV1APIService:
			return nil
		case .apiregistrationV1Beta1APIService:
			return nil
		case .appsV1ControllerRevision:
			return nil
		case .appsV1DaemonSet:
			return "ds"
		case .appsV1Deployment:
			return "deploy"
		case .appsV1ReplicaSet:
			return "rs"
		case .appsV1StatefulSet:
			return "sts"
		case .authenticationV1TokenReview:
			return nil
		case .authenticationV1Beta1TokenReview:
			return nil
		case .authorizationV1LocalSubjectAccessReview:
			return nil
		case .authorizationV1SelfSubjectAccessReview:
			return nil
		case .authorizationV1SelfSubjectRulesReview:
			return nil
		case .authorizationV1SubjectAccessReview:
			return nil
		case .authorizationV1Beta1LocalSubjectAccessReview:
			return nil
		case .authorizationV1Beta1SelfSubjectAccessReview:
			return nil
		case .authorizationV1Beta1SelfSubjectRulesReview:
			return nil
		case .authorizationV1Beta1SubjectAccessReview:
			return nil
		case .autoscalingV1HorizontalPodAutoscaler:
			return "hpa"
		case .autoscalingV2Beta2HorizontalPodAutoscaler:
			return "hpa"
		case .autoscalingV2Beta1HorizontalPodAutoscaler:
			return "hpa"
		case .batchV1Job:
			return nil
		case .batchV1Beta1CronJob:
			return "cj"
		case .batchV2Alpha1CronJob:
			return "cj"
		case .certificatesV1Beta1CertificateSigningRequest:
			return "csr"
		case .coordinationV1Lease:
			return nil
		case .coordinationV1Beta1Lease:
			return nil
		case .discoveryV1Beta1EndpointSlice:
			return nil
		case .eventsV1Beta1Event:
			return "ev"
		case .extensionsV1Beta1Ingress:
			return "ing"
		case .networkingV1NetworkPolicy:
			return "netpol"
		case .networkingV1Beta1Ingress:
			return "ing"
		case .networkingV1Beta1IngressClass:
			return nil
		case .nodeV1Beta1RuntimeClass:
			return nil
		case .nodeV1Alpha1RuntimeClass:
			return nil
		case .policyV1Beta1PodDisruptionBudget:
			return "pdb"
		case .policyV1Beta1PodSecurityPolicy:
			return "psp"
		case .rbacV1ClusterRole:
			return nil
		case .rbacV1ClusterRoleBinding:
			return nil
		case .rbacV1Role:
			return nil
		case .rbacV1RoleBinding:
			return nil
		case .rbacV1Beta1ClusterRole:
			return nil
		case .rbacV1Beta1ClusterRoleBinding:
			return nil
		case .rbacV1Beta1Role:
			return nil
		case .rbacV1Beta1RoleBinding:
			return nil
		case .rbacV1Alpha1ClusterRole:
			return nil
		case .rbacV1Alpha1ClusterRoleBinding:
			return nil
		case .rbacV1Alpha1Role:
			return nil
		case .rbacV1Alpha1RoleBinding:
			return nil
		case .schedulingV1PriorityClass:
			return "pc"
		case .schedulingV1Beta1PriorityClass:
			return "pc"
		case .schedulingV1Alpha1PriorityClass:
			return "pc"
		case .storageV1CSIDriver:
			return nil
		case .storageV1CSINode:
			return nil
		case .storageV1StorageClass:
			return "sc"
		case .storageV1VolumeAttachment:
			return nil
		case .storageV1Beta1CSIDriver:
			return nil
		case .storageV1Beta1CSINode:
			return nil
		case .storageV1Beta1StorageClass:
			return "sc"
		case .storageV1Beta1VolumeAttachment:
			return nil
		case .storageV1Alpha1VolumeAttachment:
			return nil
		}
	}
}
