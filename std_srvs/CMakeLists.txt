cmake_minimum_required(VERSION 2.8.3)
project(std_srvs)

find_package(catkin REQUIRED COMPONENTS message_generation)

add_service_files(DIRECTORY srv
  FILES
  Empty.srv
  SetBool.srv
  SetFloat32.srv
  SetFloat64.srv
  SetInt16.srv
  SetInt32.srv
  SetInt64.srv
  SetInt8.srv
  SetString.srv
  SetUInt16.srv
  SetUInt32.srv
  SetUInt64.srv
  SetUInt8.srv
  Trigger.srv)

generate_messages()

catkin_package(CATKIN_DEPENDS message_runtime)
