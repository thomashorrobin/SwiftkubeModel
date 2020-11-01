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
/// meta.v1.DeleteOptions
///

import Foundation

public extension meta.v1 {

	///
	/// DeleteOptions may be provided when deleting an API object.
	///
	struct DeleteOptions: KubernetesResource {
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		public let apiVersion: String = "v1"
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		public let kind: String = "DeleteOptions"
		///
		/// When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
		///
		public var dryRun: [String]?
		///
		/// The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
		///
		public var gracePeriodSeconds: Int64?
		///
		/// Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
		///
		public var orphanDependents: Bool?
		///
		/// Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned.
		///
		public var preconditions: meta.v1.Preconditions?
		///
		/// Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
		///
		public var propagationPolicy: String?
		///
		/// Default memberwise initializer
		///
		public init(
			dryRun: [String]? = nil,
			gracePeriodSeconds: Int64? = nil,
			orphanDependents: Bool? = nil,
			preconditions: meta.v1.Preconditions? = nil,
			propagationPolicy: String? = nil
		) {
			self.dryRun = dryRun
			self.gracePeriodSeconds = gracePeriodSeconds
			self.orphanDependents = orphanDependents
			self.preconditions = preconditions
			self.propagationPolicy = propagationPolicy
		}
	}
}

///
/// Codable conformance
///
extension meta.v1.DeleteOptions {

	private enum CodingKeys: String, CodingKey {

		case apiVersion = "apiVersion"
		case kind = "kind"
		case dryRun = "dryRun"
		case gracePeriodSeconds = "gracePeriodSeconds"
		case orphanDependents = "orphanDependents"
		case preconditions = "preconditions"
		case propagationPolicy = "propagationPolicy"
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.dryRun = try container.decodeIfPresent([String].self, forKey: .dryRun)
		self.gracePeriodSeconds = try container.decodeIfPresent(Int64.self, forKey: .gracePeriodSeconds)
		self.orphanDependents = try container.decodeIfPresent(Bool.self, forKey: .orphanDependents)
		self.preconditions = try container.decodeIfPresent(meta.v1.Preconditions.self, forKey: .preconditions)
		self.propagationPolicy = try container.decodeIfPresent(String.self, forKey: .propagationPolicy)
	}

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(self.apiVersion, forKey: .apiVersion)
		try container.encode(self.kind, forKey: .kind)
		try container.encode(self.dryRun, forKey: .dryRun)
		try container.encode(self.gracePeriodSeconds, forKey: .gracePeriodSeconds)
		try container.encode(self.orphanDependents, forKey: .orphanDependents)
		try container.encode(self.preconditions, forKey: .preconditions)
		try container.encode(self.propagationPolicy, forKey: .propagationPolicy)
	}

}

