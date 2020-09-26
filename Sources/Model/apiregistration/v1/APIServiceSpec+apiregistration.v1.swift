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

public extension apiregistration.v1 {

	///
	/// APIServiceSpec contains information for locating and communicating with a server. Only https is supported, though you are able to disable certificate verification.
	///
	struct APIServiceSpec: KubernetesResource {
		///
		/// CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate. If unspecified, system trust roots on the apiserver are used.
		///
		public var caBundle: String?
		///
		/// Group is the API group name this server hosts
		///
		public var group: String?
		///
		/// GroupPriorityMininum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s
		///
		public var groupPriorityMinimum: Int32
		///
		/// InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged.  You should use the CABundle instead.
		///
		public var insecureSkipTLSVerify: Bool?
		///
		/// Service is a reference to the service for this API server.  It must communicate on port 443 If the Service is nil, that means the handling for the API groupversion is handled locally on this server. The call will simply delegate to the normal handler chain to be fulfilled.
		///
		public var service: apiregistration.v1.ServiceReference
		///
		/// Version is the API version this server hosts.  For example, "v1"
		///
		public var version: String?
		///
		/// VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). Since it's inside of a group, the number can be small, probably in the 10s. In case of equal version priorities, the version string will be used to compute the order inside a group. If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version), then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
		///
		public var versionPriority: Int32
		///
		/// Default memberwise initializer
		///
		public init(
			caBundle: String? = nil,
			group: String? = nil,
			groupPriorityMinimum: Int32,
			insecureSkipTLSVerify: Bool? = nil,
			service: apiregistration.v1.ServiceReference,
			version: String? = nil,
			versionPriority: Int32
		) {
			self.caBundle = caBundle
			self.group = group
			self.groupPriorityMinimum = groupPriorityMinimum
			self.insecureSkipTLSVerify = insecureSkipTLSVerify
			self.service = service
			self.version = version
			self.versionPriority = versionPriority
		}
	}
}

///
/// Codable conformance
///
extension apiregistration.v1.APIServiceSpec {

	private enum CodingKeys: String, CodingKey {
		case caBundle = "caBundle"
		case group = "group"
		case groupPriorityMinimum = "groupPriorityMinimum"
		case insecureSkipTLSVerify = "insecureSkipTLSVerify"
		case service = "service"
		case version = "version"
		case versionPriority = "versionPriority"
	}

}

