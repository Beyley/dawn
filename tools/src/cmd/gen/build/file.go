// Copyright 2023 The Tint Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package build

import "path"

// File holds information about a source file
type File struct {
	// The directory that holds this source file
	Directory *Directory
	// The name of the file
	Name string
	// An optional condition used to build this source file
	Condition string
}

// Path returns the project-relative path of the file
func (f *File) Path() string {
	return path.Join(f.Directory.Path, f.Name)
}

// Path returns the absolute path of the file
func (f *File) AbsPath() string {
	return path.Join(f.Directory.AbsPath(), f.Name)
}