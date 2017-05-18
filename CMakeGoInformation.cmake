#############################################################################
# CMake-Golang
#############################################################################
# Copyright 2017 Joseph Benden <joe@benden.us>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#############################################################################

set (CMAKE_Go_FLAGS_DEBUG_INIT "")
set (CMAKE_Go_FLAGS_MINSIZEREL_INIT "")
set (CMAKE_Go_FLAGS_RELWITHDEBINFO_INIT "")
set (CMAKE_Go_FLAGS_RELEASE_INIT "")

set (CMAKE_Go_FLAGS_DEBUG "${CMAKE_Go_FLAGS_DEBUG_INIT}")
set (CMAKE_Go_FLAGS_MINSIZEREL "${CMAKE_Go_FLAGS_MINSIZEREL_INIT}")
set (CMAKE_Go_FLAGS_RELWITHDEBINFO "${CMAKE_Go_FLAGS_RELWITHDEBINFO_INIT}")
set (CMAKE_Go_FLAGS_RELEASE "${CMAKE_Go_FLAGS_RELEASE_INIT}")

if(NOT CMAKE_Go_COMPILE_OBJECT)
  set(CMAKE_Go_COMPILE_OBJECT "<CMAKE_Go_COMPILER> tool compile -l -N -o <OBJECT> <SOURCE> ")
endif()

if(NOT CMAKE_Go_LINK_EXECUTABLE)
  set(CMAKE_Go_LINK_EXECUTABLE "<CMAKE_Go_COMPILER> tool link -s -w -o <TARGET> <OBJECTS>  ")
endif()

if(NOT CMAKE_Go_CREATE_STATIC_LIBRARY)
  set(CMAKE_Go_CREATE_STATIC_LIBRARY
  "<CMAKE_AR> cr <TARGET> <LINK_FLAGS> <OBJECTS> "
  "<CMAKE_RANLIB> <TARGETS> ")
endif()

if(NOT CMAKE_Go_CREATE_SHARED_LIBRARY)
  set(CMAKE_Go_CREATE_SHARED_LIBRARY)
endif()

if(NOT CMAKE_Go_CREATE_SHARED_MODULE)
  set(CMAKE_Go_CREATE_SHARED_MODULE)
endif()

set(CMAKE_go_INFORMATION_LOADED 1)