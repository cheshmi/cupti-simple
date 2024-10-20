cmake_minimum_required(VERSION 3.10)

list(APPEND CMAKE_MODULE_PATH
        ${CMAKE_CURRENT_LIST_DIR}/cmake
        )

	project(CUPTI_Example  LANGUAGES CUDA CXX)



# Find CUDA Toolkit
find_package(CUDA REQUIRED)

# Set the CUDA standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CUDA_STANDARD 14)
# add -std=c++17 flag for host code
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")

set(CUDA_NVCC_FLAGS "${CUDA_NVCC_FLAGS} -G --ptxas-options=-v")

# Find CUPTI library
find_package(CUPTI REQUIRED)

# Add include directories
include_directories(${CUDA_INCLUDE_DIRS} ${CUPTI_INCLUDE_DIRS})

add_executable(CUPTI_Example vec_add.cu)

message(" ===> ${CUPTI_LIBRARY} ")

# Add libraries
target_link_libraries(CUPTI_Example
	${CUDA_LIBRARIES} ${CUPTI_LIBRARY})



