cmake_minimum_required(VERSION 3.14)
set(PROJECT_NAME "flutter_gl_windows")
project(${PROJECT_NAME} LANGUAGES CXX C)

# This value is used when generating builds using this plugin, so it must
# not be changed
set(PLUGIN_NAME "flutter_gl_windows_plugin")

LINK_DIRECTORIES(
  "${PROJECT_SOURCE_DIR}/glfw"
)

add_library(${PLUGIN_NAME} SHARED
  "flutter_gl_windows_plugin.cpp"
  "CustomRender.cpp"
  "EglEnv.cpp"
  "OpenGLProgram.cpp"
  "RenderWorker.cpp"
)

add_library(GLAD "glad/src/glad.c")

apply_standard_settings(${PLUGIN_NAME})
set_target_properties(${PLUGIN_NAME} PROPERTIES
  CXX_VISIBILITY_PRESET hidden)
target_compile_definitions(${PLUGIN_NAME} PRIVATE FLUTTER_PLUGIN_IMPL)


include_directories(
  ${PROJECT_SOURCE_DIR}/glfw/include
  ${PROJECT_SOURCE_DIR}/glad/include
)



target_include_directories(${PLUGIN_NAME} INTERFACE
  "${CMAKE_CURRENT_SOURCE_DIR}/include")


find_package(OpenGL REQUIRED)


target_link_libraries(
  ${PLUGIN_NAME} PRIVATE flutter flutter_wrapper_plugin OpenGL::GL glfw3 GLAD
)

# List of absolute paths to libraries that should be bundled with the plugin
set(flutter_gl_windows_bundled_libraries
  ""
  PARENT_SCOPE
)
