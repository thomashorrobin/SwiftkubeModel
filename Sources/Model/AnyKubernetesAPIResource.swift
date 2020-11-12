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
/// A type-erased `KubernetesAPIResource` that wraps the actual resource instance.
///
public struct AnyKubernetesAPIResource: KubernetesAPIResource {

	private enum CodingKeys: String, CodingKey {
		case apiVersion
		case kind
	}

	private let resource: KubernetesAPIResource

	public var apiVersion: String

	public var kind: String

	public var metadata: meta.v1.ObjectMeta?

	public init(_ resource: KubernetesAPIResource) {
		self.resource = resource
		self.apiVersion = resource.apiVersion
		self.kind = resource.kind
		self.metadata = resource.metadata
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)

		let decodedAPIVersion: String?
		if container.contains(.apiVersion) {
			decodedAPIVersion = try container.decode(String.self, forKey: .apiVersion)
		} else {
			decodedAPIVersion = decoder.userInfo[CodingUserInfoKey.apiVersion] as? String
		}

		let decodedKind: String?
		if container.contains(.kind) {
			decodedKind = try container.decode(String.self, forKey: .kind)
		} else {
			decodedKind = decoder.userInfo[CodingUserInfoKey.kind] as? String
		}

		guard let apiVersionString = decodedAPIVersion, let kindString = decodedKind else {
			throw SwiftkubeModelError.decodingError("Couldn't decode apiVersion and/or kind at: \(container.codingPath)")
		}

		let gvk = GroupVersionKind(rawValue: "\(apiVersionString)/\(kindString)")

		let decoded: KubernetesAPIResource
		switch gvk {

		case .coreV1Binding:
			decoded = try core.v1.Binding.init(from: decoder)
		case .coreV1ComponentStatus:
			decoded = try core.v1.ComponentStatus.init(from: decoder)
		case .coreV1ConfigMap:
			decoded = try core.v1.ConfigMap.init(from: decoder)
		case .coreV1Endpoints:
			decoded = try core.v1.Endpoints.init(from: decoder)
		case .coreV1Event:
			decoded = try core.v1.Event.init(from: decoder)
		case .coreV1LimitRange:
			decoded = try core.v1.LimitRange.init(from: decoder)
		case .coreV1Namespace:
			decoded = try core.v1.Namespace.init(from: decoder)
		case .coreV1Node:
			decoded = try core.v1.Node.init(from: decoder)
		case .coreV1PersistentVolume:
			decoded = try core.v1.PersistentVolume.init(from: decoder)
		case .coreV1PersistentVolumeClaim:
			decoded = try core.v1.PersistentVolumeClaim.init(from: decoder)
		case .coreV1Pod:
			decoded = try core.v1.Pod.init(from: decoder)
		case .coreV1PodTemplate:
			decoded = try core.v1.PodTemplate.init(from: decoder)
		case .coreV1ReplicationController:
			decoded = try core.v1.ReplicationController.init(from: decoder)
		case .coreV1ResourceQuota:
			decoded = try core.v1.ResourceQuota.init(from: decoder)
		case .coreV1Secret:
			decoded = try core.v1.Secret.init(from: decoder)
		case .coreV1Service:
			decoded = try core.v1.Service.init(from: decoder)
		case .coreV1ServiceAccount:
			decoded = try core.v1.ServiceAccount.init(from: decoder)
		case .admissionregistrationV1MutatingWebhookConfiguration:
			decoded = try admissionregistration.v1.MutatingWebhookConfiguration.init(from: decoder)
		case .admissionregistrationV1ValidatingWebhookConfiguration:
			decoded = try admissionregistration.v1.ValidatingWebhookConfiguration.init(from: decoder)
		case .admissionregistrationV1Beta1MutatingWebhookConfiguration:
			decoded = try admissionregistration.v1beta1.MutatingWebhookConfiguration.init(from: decoder)
		case .admissionregistrationV1Beta1ValidatingWebhookConfiguration:
			decoded = try admissionregistration.v1beta1.ValidatingWebhookConfiguration.init(from: decoder)
		case .apiextensionsV1CustomResourceDefinition:
			decoded = try apiextensions.v1.CustomResourceDefinition.init(from: decoder)
		case .apiextensionsV1Beta1CustomResourceDefinition:
			decoded = try apiextensions.v1beta1.CustomResourceDefinition.init(from: decoder)
		case .apiregistrationV1APIService:
			decoded = try apiregistration.v1.APIService.init(from: decoder)
		case .apiregistrationV1Beta1APIService:
			decoded = try apiregistration.v1beta1.APIService.init(from: decoder)
		case .appsV1ControllerRevision:
			decoded = try apps.v1.ControllerRevision.init(from: decoder)
		case .appsV1DaemonSet:
			decoded = try apps.v1.DaemonSet.init(from: decoder)
		case .appsV1Deployment:
			decoded = try apps.v1.Deployment.init(from: decoder)
		case .appsV1ReplicaSet:
			decoded = try apps.v1.ReplicaSet.init(from: decoder)
		case .appsV1StatefulSet:
			decoded = try apps.v1.StatefulSet.init(from: decoder)
		case .authenticationV1TokenReview:
			decoded = try authentication.v1.TokenReview.init(from: decoder)
		case .authenticationV1Beta1TokenReview:
			decoded = try authentication.v1beta1.TokenReview.init(from: decoder)
		case .authorizationV1LocalSubjectAccessReview:
			decoded = try authorization.v1.LocalSubjectAccessReview.init(from: decoder)
		case .authorizationV1SelfSubjectAccessReview:
			decoded = try authorization.v1.SelfSubjectAccessReview.init(from: decoder)
		case .authorizationV1SelfSubjectRulesReview:
			decoded = try authorization.v1.SelfSubjectRulesReview.init(from: decoder)
		case .authorizationV1SubjectAccessReview:
			decoded = try authorization.v1.SubjectAccessReview.init(from: decoder)
		case .authorizationV1Beta1LocalSubjectAccessReview:
			decoded = try authorization.v1beta1.LocalSubjectAccessReview.init(from: decoder)
		case .authorizationV1Beta1SelfSubjectAccessReview:
			decoded = try authorization.v1beta1.SelfSubjectAccessReview.init(from: decoder)
		case .authorizationV1Beta1SelfSubjectRulesReview:
			decoded = try authorization.v1beta1.SelfSubjectRulesReview.init(from: decoder)
		case .authorizationV1Beta1SubjectAccessReview:
			decoded = try authorization.v1beta1.SubjectAccessReview.init(from: decoder)
		case .autoscalingV1HorizontalPodAutoscaler:
			decoded = try autoscaling.v1.HorizontalPodAutoscaler.init(from: decoder)
		case .autoscalingV2Beta2HorizontalPodAutoscaler:
			decoded = try autoscaling.v2beta2.HorizontalPodAutoscaler.init(from: decoder)
		case .autoscalingV2Beta1HorizontalPodAutoscaler:
			decoded = try autoscaling.v2beta1.HorizontalPodAutoscaler.init(from: decoder)
		case .batchV1Job:
			decoded = try batch.v1.Job.init(from: decoder)
		case .batchV1Beta1CronJob:
			decoded = try batch.v1beta1.CronJob.init(from: decoder)
		case .batchV2Alpha1CronJob:
			decoded = try batch.v2alpha1.CronJob.init(from: decoder)
		case .certificatesV1Beta1CertificateSigningRequest:
			decoded = try certificates.v1beta1.CertificateSigningRequest.init(from: decoder)
		case .coordinationV1Lease:
			decoded = try coordination.v1.Lease.init(from: decoder)
		case .coordinationV1Beta1Lease:
			decoded = try coordination.v1beta1.Lease.init(from: decoder)
		case .discoveryV1Beta1EndpointSlice:
			decoded = try discovery.v1beta1.EndpointSlice.init(from: decoder)
		case .eventsV1Beta1Event:
			decoded = try events.v1beta1.Event.init(from: decoder)
		case .extensionsV1Beta1Ingress:
			decoded = try extensions.v1beta1.Ingress.init(from: decoder)
		case .networkingV1NetworkPolicy:
			decoded = try networking.v1.NetworkPolicy.init(from: decoder)
		case .networkingV1Beta1Ingress:
			decoded = try networking.v1beta1.Ingress.init(from: decoder)
		case .networkingV1Beta1IngressClass:
			decoded = try networking.v1beta1.IngressClass.init(from: decoder)
		case .nodeV1Beta1RuntimeClass:
			decoded = try node.v1beta1.RuntimeClass.init(from: decoder)
		case .nodeV1Alpha1RuntimeClass:
			decoded = try node.v1alpha1.RuntimeClass.init(from: decoder)
		case .policyV1Beta1PodDisruptionBudget:
			decoded = try policy.v1beta1.PodDisruptionBudget.init(from: decoder)
		case .policyV1Beta1PodSecurityPolicy:
			decoded = try policy.v1beta1.PodSecurityPolicy.init(from: decoder)
		case .rbacV1ClusterRole:
			decoded = try rbac.v1.ClusterRole.init(from: decoder)
		case .rbacV1ClusterRoleBinding:
			decoded = try rbac.v1.ClusterRoleBinding.init(from: decoder)
		case .rbacV1Role:
			decoded = try rbac.v1.Role.init(from: decoder)
		case .rbacV1RoleBinding:
			decoded = try rbac.v1.RoleBinding.init(from: decoder)
		case .rbacV1Beta1ClusterRole:
			decoded = try rbac.v1beta1.ClusterRole.init(from: decoder)
		case .rbacV1Beta1ClusterRoleBinding:
			decoded = try rbac.v1beta1.ClusterRoleBinding.init(from: decoder)
		case .rbacV1Beta1Role:
			decoded = try rbac.v1beta1.Role.init(from: decoder)
		case .rbacV1Beta1RoleBinding:
			decoded = try rbac.v1beta1.RoleBinding.init(from: decoder)
		case .rbacV1Alpha1ClusterRole:
			decoded = try rbac.v1alpha1.ClusterRole.init(from: decoder)
		case .rbacV1Alpha1ClusterRoleBinding:
			decoded = try rbac.v1alpha1.ClusterRoleBinding.init(from: decoder)
		case .rbacV1Alpha1Role:
			decoded = try rbac.v1alpha1.Role.init(from: decoder)
		case .rbacV1Alpha1RoleBinding:
			decoded = try rbac.v1alpha1.RoleBinding.init(from: decoder)
		case .schedulingV1PriorityClass:
			decoded = try scheduling.v1.PriorityClass.init(from: decoder)
		case .schedulingV1Beta1PriorityClass:
			decoded = try scheduling.v1beta1.PriorityClass.init(from: decoder)
		case .schedulingV1Alpha1PriorityClass:
			decoded = try scheduling.v1alpha1.PriorityClass.init(from: decoder)
		case .storageV1CSIDriver:
			decoded = try storage.v1.CSIDriver.init(from: decoder)
		case .storageV1CSINode:
			decoded = try storage.v1.CSINode.init(from: decoder)
		case .storageV1StorageClass:
			decoded = try storage.v1.StorageClass.init(from: decoder)
		case .storageV1VolumeAttachment:
			decoded = try storage.v1.VolumeAttachment.init(from: decoder)
		case .storageV1Beta1CSIDriver:
			decoded = try storage.v1beta1.CSIDriver.init(from: decoder)
		case .storageV1Beta1CSINode:
			decoded = try storage.v1beta1.CSINode.init(from: decoder)
		case .storageV1Beta1StorageClass:
			decoded = try storage.v1beta1.StorageClass.init(from: decoder)
		case .storageV1Beta1VolumeAttachment:
			decoded = try storage.v1beta1.VolumeAttachment.init(from: decoder)
		case .storageV1Alpha1VolumeAttachment:
			decoded = try storage.v1alpha1.VolumeAttachment.init(from: decoder)
		default:
			let context = DecodingError.Context(
				codingPath: [CodingKeys.apiVersion, CodingKeys.kind],
				debugDescription: "Unknown Kubernetes object gvk: \(String(describing: gvk))"
			)
			throw DecodingError.dataCorrupted(context)
		}

		self.init(decoded)
	}

	public func encode(to encoder: Encoder) throws {
		try resource.encode(to: encoder)
	}
}
