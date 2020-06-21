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
	/// Event is a report of an event somewhere in the cluster.
	///
	struct Event: KubernetesResource, Codable {
	
		///
		/// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
		///
		let apiVersion: String = "v1"
	
		///
		/// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
		///
		let kind: String = "Event"
	
		///
		/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
		///
		var metadata: meta.v1.ObjectMeta
	
		///
		/// What action was taken/failed regarding to the Regarding object.
		///
		var action: String?
	
		///
		/// The number of times this event has occurred.
		///
		var count: Int32?
	
		///
		/// Time when this Event was first observed.
		///
		var eventTime: String?
	
		///
		/// The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
		///
		var firstTimestamp: String?
	
		///
		/// The object that this event is about.
		///
		var involvedObject: core.v1.ObjectReference
	
		///
		/// The time at which the most recent occurrence of this event was recorded.
		///
		var lastTimestamp: String?
	
		///
		/// A human-readable description of the status of this operation.
		///
		var message: String?
	
		///
		/// This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
		///
		var reason: String?
	
		///
		/// Optional secondary object for more complex actions.
		///
		var related: core.v1.ObjectReference?
	
		///
		/// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
		///
		var reportingComponent: String?
	
		///
		/// ID of the controller instance, e.g. `kubelet-xyzf`.
		///
		var reportingInstance: String?
	
		///
		/// Data about the Event series this event represents or nil if it's a singleton Event.
		///
		var series: core.v1.EventSeries?
	
		///
		/// The component reporting this event. Should be a short machine understandable string.
		///
		var source: core.v1.EventSource?
	
		///
		/// Type of this event (Normal, Warning), new types could be added in the future
		///
		var type: String?
	
	}
}
