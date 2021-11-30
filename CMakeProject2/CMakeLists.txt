cmake_minimum_required(VERSION 3.19)
project(spoLab15 C)
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -pthread")
find_package(LibXml2 REQUIRED)
include_directories(${LIBXML2_INCLUDE_DIR})


add_executable(server utils/const.h datafile/attribute.c datafile/attribute.h server/server.c server/server.h server/server_main.c utils/message.c utils/message.h utils/linked_list.c utils/linked_list.h datafile/node.c datafile/node.h datafile/label.c datafile/label.h datafile/datafile.c datafile/datafile.h datafile/cells.h datafile/blocks.h datafile/relation.c datafile/relation.h utils/my_alloc.c utils/my_alloc.h)
add_executable(client client/client.c client/client.h utils/message.c utils/message.h client/client_main.c datafile/node.c datafile/label.c datafile/attribute.c utils/my_alloc.c utils/my_alloc.h datafile/blocks.h datafile/relation.c datafile/relation.h utils/linked_list.h utils/linked_list.c datafile/datafile.c datafile/datafile.h)
add_executable(datafile debug/datafile_main.c)
target_link_libraries(server ${LIBXML2_LIBRARY})
target_link_libraries(client ${LIBXML2_LIBRARY})
target_link_libraries(datafile ${LIBXML2_LIBRARY})