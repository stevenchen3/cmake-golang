CMake-Golang
============

This project contains the necessary `CMake` modules that add support for the Golang language.

How to use it in your own project
---------------------------------

* Add or include this repository as a Git submodule inside your own project; for example, under the path `cmake` at your project's root path.

    $ git submodule add https://gitlab.com/jbenden/cmake-golang.git cmake

* Ensure `CMakeLists.txt` in your root path includes the above submodule path within the `CMAKE_MODULE_PATH` `CMake` variable.

    set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")

* Enable project-wide `Go` language support;

    project(myproject Go)

* Or, enable `Go` through a call to `enable_language`.

    enable_language(Go)

License
-------

The `cmake-golang` CMake module library is Apache 2.0 licensed.