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

public extension sk {

	static func namespace(_ block: (inout core.v1.Namespace) -> Void) -> core.v1.Namespace {
		return build(core.v1.Namespace(), with: block)
	}

	static func namespaceSpec(_ block: (inout core.v1.NamespaceSpec) -> Void) -> core.v1.NamespaceSpec {
		return build(core.v1.NamespaceSpec(), with: block)
	}
}

public extension core.v1.Namespace {

	mutating func add(finalizer: String) {
		if self.spec == nil {
			self.spec = core.v1.NamespaceSpec()
			self.spec?.finalizers = []
		}
		self.spec?.finalizers?.append(finalizer)
	}

	mutating func remove(finalizer: String) {
		self.spec?.finalizers?.removeAll(where: { $0 == finalizer })
	}
}