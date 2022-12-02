# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mqtt_client: 1 messages, 1 services")

set(MSG_I_FLAGS "-Imqtt_client:/home/kande/catkin_ws/src/mqtt_client/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mqtt_client_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kande/catkin_ws/src/mqtt_client/msg/RosMsgType.msg" NAME_WE)
add_custom_target(_mqtt_client_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mqtt_client" "/home/kande/catkin_ws/src/mqtt_client/msg/RosMsgType.msg" ""
)

get_filename_component(_filename "/home/kande/catkin_ws/src/mqtt_client/srv/IsConnected.srv" NAME_WE)
add_custom_target(_mqtt_client_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mqtt_client" "/home/kande/catkin_ws/src/mqtt_client/srv/IsConnected.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mqtt_client
  "/home/kande/catkin_ws/src/mqtt_client/msg/RosMsgType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mqtt_client
)

### Generating Services
_generate_srv_cpp(mqtt_client
  "/home/kande/catkin_ws/src/mqtt_client/srv/IsConnected.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mqtt_client
)

### Generating Module File
_generate_module_cpp(mqtt_client
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mqtt_client
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mqtt_client_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mqtt_client_generate_messages mqtt_client_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kande/catkin_ws/src/mqtt_client/msg/RosMsgType.msg" NAME_WE)
add_dependencies(mqtt_client_generate_messages_cpp _mqtt_client_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kande/catkin_ws/src/mqtt_client/srv/IsConnected.srv" NAME_WE)
add_dependencies(mqtt_client_generate_messages_cpp _mqtt_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mqtt_client_gencpp)
add_dependencies(mqtt_client_gencpp mqtt_client_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mqtt_client_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mqtt_client
  "/home/kande/catkin_ws/src/mqtt_client/msg/RosMsgType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mqtt_client
)

### Generating Services
_generate_srv_eus(mqtt_client
  "/home/kande/catkin_ws/src/mqtt_client/srv/IsConnected.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mqtt_client
)

### Generating Module File
_generate_module_eus(mqtt_client
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mqtt_client
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mqtt_client_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mqtt_client_generate_messages mqtt_client_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kande/catkin_ws/src/mqtt_client/msg/RosMsgType.msg" NAME_WE)
add_dependencies(mqtt_client_generate_messages_eus _mqtt_client_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kande/catkin_ws/src/mqtt_client/srv/IsConnected.srv" NAME_WE)
add_dependencies(mqtt_client_generate_messages_eus _mqtt_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mqtt_client_geneus)
add_dependencies(mqtt_client_geneus mqtt_client_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mqtt_client_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mqtt_client
  "/home/kande/catkin_ws/src/mqtt_client/msg/RosMsgType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mqtt_client
)

### Generating Services
_generate_srv_lisp(mqtt_client
  "/home/kande/catkin_ws/src/mqtt_client/srv/IsConnected.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mqtt_client
)

### Generating Module File
_generate_module_lisp(mqtt_client
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mqtt_client
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mqtt_client_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mqtt_client_generate_messages mqtt_client_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kande/catkin_ws/src/mqtt_client/msg/RosMsgType.msg" NAME_WE)
add_dependencies(mqtt_client_generate_messages_lisp _mqtt_client_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kande/catkin_ws/src/mqtt_client/srv/IsConnected.srv" NAME_WE)
add_dependencies(mqtt_client_generate_messages_lisp _mqtt_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mqtt_client_genlisp)
add_dependencies(mqtt_client_genlisp mqtt_client_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mqtt_client_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mqtt_client
  "/home/kande/catkin_ws/src/mqtt_client/msg/RosMsgType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mqtt_client
)

### Generating Services
_generate_srv_nodejs(mqtt_client
  "/home/kande/catkin_ws/src/mqtt_client/srv/IsConnected.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mqtt_client
)

### Generating Module File
_generate_module_nodejs(mqtt_client
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mqtt_client
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mqtt_client_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mqtt_client_generate_messages mqtt_client_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kande/catkin_ws/src/mqtt_client/msg/RosMsgType.msg" NAME_WE)
add_dependencies(mqtt_client_generate_messages_nodejs _mqtt_client_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kande/catkin_ws/src/mqtt_client/srv/IsConnected.srv" NAME_WE)
add_dependencies(mqtt_client_generate_messages_nodejs _mqtt_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mqtt_client_gennodejs)
add_dependencies(mqtt_client_gennodejs mqtt_client_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mqtt_client_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mqtt_client
  "/home/kande/catkin_ws/src/mqtt_client/msg/RosMsgType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mqtt_client
)

### Generating Services
_generate_srv_py(mqtt_client
  "/home/kande/catkin_ws/src/mqtt_client/srv/IsConnected.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mqtt_client
)

### Generating Module File
_generate_module_py(mqtt_client
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mqtt_client
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mqtt_client_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mqtt_client_generate_messages mqtt_client_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kande/catkin_ws/src/mqtt_client/msg/RosMsgType.msg" NAME_WE)
add_dependencies(mqtt_client_generate_messages_py _mqtt_client_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kande/catkin_ws/src/mqtt_client/srv/IsConnected.srv" NAME_WE)
add_dependencies(mqtt_client_generate_messages_py _mqtt_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mqtt_client_genpy)
add_dependencies(mqtt_client_genpy mqtt_client_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mqtt_client_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mqtt_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mqtt_client
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mqtt_client_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mqtt_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mqtt_client
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mqtt_client_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mqtt_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mqtt_client
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mqtt_client_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mqtt_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mqtt_client
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mqtt_client_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mqtt_client)
  install(CODE "execute_process(COMMAND \"/home/kande/anaconda3/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mqtt_client\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mqtt_client
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mqtt_client_generate_messages_py std_msgs_generate_messages_py)
endif()
