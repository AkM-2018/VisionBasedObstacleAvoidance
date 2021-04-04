# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "interiit21: 0 messages, 8 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(interiit21_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetPositionYawRate.srv" NAME_WE)
add_custom_target(_interiit21_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interiit21" "/home/akhil-manoj/drdo/src/interiit21/srv/SetPositionYawRate.srv" ""
)

get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocityYawRate.srv" NAME_WE)
add_custom_target(_interiit21_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interiit21" "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocityYawRate.srv" ""
)

get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitude.srv" NAME_WE)
add_custom_target(_interiit21_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interiit21" "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitude.srv" ""
)

get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetPosition.srv" NAME_WE)
add_custom_target(_interiit21_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interiit21" "/home/akhil-manoj/drdo/src/interiit21/srv/SetPosition.srv" ""
)

get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetRates.srv" NAME_WE)
add_custom_target(_interiit21_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interiit21" "/home/akhil-manoj/drdo/src/interiit21/srv/SetRates.srv" ""
)

get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitudeYawRate.srv" NAME_WE)
add_custom_target(_interiit21_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interiit21" "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitudeYawRate.srv" ""
)

get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetRatesYaw.srv" NAME_WE)
add_custom_target(_interiit21_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interiit21" "/home/akhil-manoj/drdo/src/interiit21/srv/SetRatesYaw.srv" ""
)

get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocity.srv" NAME_WE)
add_custom_target(_interiit21_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interiit21" "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocity.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetPositionYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interiit21
)
_generate_srv_cpp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocityYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interiit21
)
_generate_srv_cpp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interiit21
)
_generate_srv_cpp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interiit21
)
_generate_srv_cpp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interiit21
)
_generate_srv_cpp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitudeYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interiit21
)
_generate_srv_cpp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetRatesYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interiit21
)
_generate_srv_cpp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interiit21
)

### Generating Module File
_generate_module_cpp(interiit21
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interiit21
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(interiit21_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(interiit21_generate_messages interiit21_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetPositionYawRate.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_cpp _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocityYawRate.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_cpp _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitude.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_cpp _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetPosition.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_cpp _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetRates.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_cpp _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitudeYawRate.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_cpp _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetRatesYaw.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_cpp _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocity.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_cpp _interiit21_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interiit21_gencpp)
add_dependencies(interiit21_gencpp interiit21_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interiit21_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetPositionYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interiit21
)
_generate_srv_eus(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocityYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interiit21
)
_generate_srv_eus(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interiit21
)
_generate_srv_eus(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interiit21
)
_generate_srv_eus(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interiit21
)
_generate_srv_eus(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitudeYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interiit21
)
_generate_srv_eus(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetRatesYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interiit21
)
_generate_srv_eus(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interiit21
)

### Generating Module File
_generate_module_eus(interiit21
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interiit21
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(interiit21_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(interiit21_generate_messages interiit21_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetPositionYawRate.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_eus _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocityYawRate.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_eus _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitude.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_eus _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetPosition.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_eus _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetRates.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_eus _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitudeYawRate.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_eus _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetRatesYaw.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_eus _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocity.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_eus _interiit21_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interiit21_geneus)
add_dependencies(interiit21_geneus interiit21_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interiit21_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetPositionYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interiit21
)
_generate_srv_lisp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocityYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interiit21
)
_generate_srv_lisp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interiit21
)
_generate_srv_lisp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interiit21
)
_generate_srv_lisp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interiit21
)
_generate_srv_lisp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitudeYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interiit21
)
_generate_srv_lisp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetRatesYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interiit21
)
_generate_srv_lisp(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interiit21
)

### Generating Module File
_generate_module_lisp(interiit21
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interiit21
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(interiit21_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(interiit21_generate_messages interiit21_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetPositionYawRate.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_lisp _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocityYawRate.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_lisp _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitude.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_lisp _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetPosition.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_lisp _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetRates.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_lisp _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitudeYawRate.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_lisp _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetRatesYaw.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_lisp _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocity.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_lisp _interiit21_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interiit21_genlisp)
add_dependencies(interiit21_genlisp interiit21_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interiit21_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetPositionYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interiit21
)
_generate_srv_nodejs(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocityYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interiit21
)
_generate_srv_nodejs(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interiit21
)
_generate_srv_nodejs(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interiit21
)
_generate_srv_nodejs(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interiit21
)
_generate_srv_nodejs(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitudeYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interiit21
)
_generate_srv_nodejs(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetRatesYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interiit21
)
_generate_srv_nodejs(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interiit21
)

### Generating Module File
_generate_module_nodejs(interiit21
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interiit21
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(interiit21_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(interiit21_generate_messages interiit21_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetPositionYawRate.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_nodejs _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocityYawRate.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_nodejs _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitude.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_nodejs _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetPosition.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_nodejs _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetRates.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_nodejs _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitudeYawRate.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_nodejs _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetRatesYaw.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_nodejs _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocity.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_nodejs _interiit21_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interiit21_gennodejs)
add_dependencies(interiit21_gennodejs interiit21_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interiit21_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetPositionYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interiit21
)
_generate_srv_py(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocityYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interiit21
)
_generate_srv_py(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interiit21
)
_generate_srv_py(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interiit21
)
_generate_srv_py(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interiit21
)
_generate_srv_py(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitudeYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interiit21
)
_generate_srv_py(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetRatesYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interiit21
)
_generate_srv_py(interiit21
  "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interiit21
)

### Generating Module File
_generate_module_py(interiit21
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interiit21
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(interiit21_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(interiit21_generate_messages interiit21_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetPositionYawRate.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_py _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocityYawRate.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_py _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitude.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_py _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetPosition.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_py _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetRates.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_py _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetAttitudeYawRate.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_py _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetRatesYaw.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_py _interiit21_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akhil-manoj/drdo/src/interiit21/srv/SetVelocity.srv" NAME_WE)
add_dependencies(interiit21_generate_messages_py _interiit21_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interiit21_genpy)
add_dependencies(interiit21_genpy interiit21_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interiit21_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interiit21)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interiit21
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(interiit21_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interiit21)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interiit21
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(interiit21_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interiit21)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interiit21
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(interiit21_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interiit21)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interiit21
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(interiit21_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interiit21)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interiit21\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interiit21
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(interiit21_generate_messages_py std_msgs_generate_messages_py)
endif()
