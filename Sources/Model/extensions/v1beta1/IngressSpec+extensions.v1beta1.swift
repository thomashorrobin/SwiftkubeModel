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
/// extensions.v1beta1.IngressSpec
///

import Foundation

public extension extensions.v1beta1 {

	///
	/// IngressSpec describes the Ingress the user wishes to exist.
	///
	struct IngressSpec: KubernetesResource {
		///
		/// A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.
		///
		public var backend: extensions.v1beta1.IngressBackend?
		///
		/// IngressClassName is the name of the IngressClass cluster resource. The associated IngressClass defines which controller will implement the resource. This replaces the deprecated `kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.
		///
		public var ingressClassName: String?
		///
		/// A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
		///
		public var rules: [extensions.v1beta1.IngressRule]?
		///
		/// TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
		///
		public var tls: [extensions.v1beta1.IngressTLS]?
		///
		/// Default memberwise initializer
		///
		public init(
			backend: extensions.v1beta1.IngressBackend? = nil,
			ingressClassName: String? = nil,
			rules: [extensions.v1beta1.IngressRule]? = nil,
			tls: [extensions.v1beta1.IngressTLS]? = nil
		) {
			self.backend = backend
			self.ingressClassName = ingressClassName
			self.rules = rules
			self.tls = tls
		}
	}
}

///
/// Codable conformance
///
extension extensions.v1beta1.IngressSpec {

	private enum CodingKeys: String, CodingKey {
		case backend = "backend"
		case ingressClassName = "ingressClassName"
		case rules = "rules"
		case tls = "tls"
	}

}
