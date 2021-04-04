# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "marker_navigator: 0 messages, 8 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(marker_navigator_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRatesYaw.srv" NAME_WE)
add_custom_target(_marker_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marker_navigator" "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRatesYaw.srv" ""
)

get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPosition.srv" NAME_WE)
add_custom_target(_marker_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marker_navigator" "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPosition.srv" ""
)

get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRates.srv" NAME_WE)
add_custom_target(_marker_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marker_navigator" "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRates.srv" ""
)

get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitude.srv" NAME_WE)
add_custom_target(_marker_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marker_navigator" "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitude.srv" ""
)

get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocity.srv" NAME_WE)
add_custom_target(_marker_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marker_navigator" "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocity.srv" ""
)

get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocityYawRate.srv" NAME_WE)
add_custom_target(_marker_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marker_navigator" "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocityYawRate.srv" ""
)

get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPositionYawRate.srv" NAME_WE)
add_custom_target(_marker_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marker_navigator" "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPositionYawRate.srv" ""
)

get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitudeYawRate.srv" NAME_WE)
add_custom_target(_marker_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "marker_navigator" "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitudeYawRate.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRatesYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marker_navigator
)
_generate_srv_cpp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marker_navigator
)
_generate_srv_cpp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marker_navigator
)
_generate_srv_cpp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marker_navigator
)
_generate_srv_cpp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marker_navigator
)
_generate_srv_cpp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocityYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marker_navigator
)
_generate_srv_cpp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPositionYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marker_navigator
)
_generate_srv_cpp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitudeYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marker_navigator
)

### Generating Module File
_generate_module_cpp(marker_navigator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marker_navigator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(marker_navigator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(marker_navigator_generate_messages marker_navigator_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRatesYaw.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_cpp _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPosition.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_cpp _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRates.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_cpp _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitude.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_cpp _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocity.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_cpp _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocityYawRate.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_cpp _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPositionYawRate.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_cpp _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitudeYawRate.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_cpp _marker_navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(marker_navigator_gencpp)
add_dependencies(marker_navigator_gencpp marker_navigator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS marker_navigator_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRatesYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marker_navigator
)
_generate_srv_eus(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marker_navigator
)
_generate_srv_eus(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marker_navigator
)
_generate_srv_eus(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marker_navigator
)
_generate_srv_eus(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marker_navigator
)
_generate_srv_eus(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocityYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marker_navigator
)
_generate_srv_eus(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPositionYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marker_navigator
)
_generate_srv_eus(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitudeYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marker_navigator
)

### Generating Module File
_generate_module_eus(marker_navigator
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marker_navigator
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(marker_navigator_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(marker_navigator_generate_messages marker_navigator_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRatesYaw.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_eus _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPosition.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_eus _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRates.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_eus _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitude.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_eus _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocity.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_eus _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocityYawRate.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_eus _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPositionYawRate.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_eus _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitudeYawRate.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_eus _marker_navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(marker_navigator_geneus)
add_dependencies(marker_navigator_geneus marker_navigator_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS marker_navigator_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRatesYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marker_navigator
)
_generate_srv_lisp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marker_navigator
)
_generate_srv_lisp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marker_navigator
)
_generate_srv_lisp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marker_navigator
)
_generate_srv_lisp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marker_navigator
)
_generate_srv_lisp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocityYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marker_navigator
)
_generate_srv_lisp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPositionYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marker_navigator
)
_generate_srv_lisp(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitudeYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marker_navigator
)

### Generating Module File
_generate_module_lisp(marker_navigator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marker_navigator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(marker_navigator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(marker_navigator_generate_messages marker_navigator_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRatesYaw.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_lisp _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPosition.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_lisp _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRates.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_lisp _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitude.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_lisp _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocity.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_lisp _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocityYawRate.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_lisp _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPositionYawRate.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_lisp _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitudeYawRate.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_lisp _marker_navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(marker_navigator_genlisp)
add_dependencies(marker_navigator_genlisp marker_navigator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS marker_navigator_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRatesYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marker_navigator
)
_generate_srv_nodejs(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marker_navigator
)
_generate_srv_nodejs(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marker_navigator
)
_generate_srv_nodejs(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marker_navigator
)
_generate_srv_nodejs(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marker_navigator
)
_generate_srv_nodejs(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocityYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marker_navigator
)
_generate_srv_nodejs(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPositionYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marker_navigator
)
_generate_srv_nodejs(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitudeYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marker_navigator
)

### Generating Module File
_generate_module_nodejs(marker_navigator
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marker_navigator
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(marker_navigator_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(marker_navigator_generate_messages marker_navigator_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRatesYaw.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_nodejs _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPosition.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_nodejs _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRates.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_nodejs _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitude.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_nodejs _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocity.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_nodejs _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocityYawRate.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_nodejs _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPositionYawRate.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_nodejs _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitudeYawRate.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_nodejs _marker_navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(marker_navigator_gennodejs)
add_dependencies(marker_navigator_gennodejs marker_navigator_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS marker_navigator_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRatesYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marker_navigator
)
_generate_srv_py(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marker_navigator
)
_generate_srv_py(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marker_navigator
)
_generate_srv_py(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marker_navigator
)
_generate_srv_py(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marker_navigator
)
_generate_srv_py(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocityYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marker_navigator
)
_generate_srv_py(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPositionYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marker_navigator
)
_generate_srv_py(marker_navigator
  "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitudeYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marker_navigator
)

### Generating Module File
_generate_module_py(marker_navigator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marker_navigator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(marker_navigator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(marker_navigator_generate_messages marker_navigator_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRatesYaw.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_py _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPosition.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_py _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetRates.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_py _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitude.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_py _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocity.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_py _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetVelocityYawRate.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_py _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetPositionYawRate.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_py _marker_navigator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/marker_navigator-master/srv/SetAttitudeYawRate.srv" NAME_WE)
add_dependencies(marker_navigator_generate_messages_py _marker_navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(marker_navigator_genpy)
add_dependencies(marker_navigator_genpy marker_navigator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS marker_navigator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marker_navigator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/marker_navigator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(marker_navigator_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marker_navigator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/marker_navigator
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(marker_navigator_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marker_navigator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/marker_navigator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(marker_navigator_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marker_navigator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/marker_navigator
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(marker_navigator_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marker_navigator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marker_navigator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/marker_navigator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(marker_navigator_generate_messages_py std_msgs_generate_messages_py)
endif()
