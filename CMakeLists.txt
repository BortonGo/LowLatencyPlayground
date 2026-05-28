cmake_minimum_required(VERSION 4.2)
project(LowLatencyPlayground)

set(CMAKE_CXX_STANDARD 23)

add_executable(LowLatencyPlayground main.cpp
        include/llp/latency_stats.hpp
        include/llp/benchmark_timer.hpp
        include/llp/object_pool.hpp
)

target_include_directories(LowLatencyPlayground PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}
        ${CMAKE_CURRENT_SOURCE_DIR}/include
        ${CMAKE_CURRENT_SOURCE_DIR}/tests
        ${CMAKE_CURRENT_SOURCE_DIR}/src
)

find_package(GTest CONFIG REQUIRED)

add_executable(llp_tests
        tests/test_latency_stats.cpp
        tests/test_benchmark_timer.cpp
        tests/test_object_pool.cpp
)
target_include_directories(llp_tests PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
target_link_libraries(llp_tests PRIVATE
        GTest::gtest_main
)

add_executable(benchmark_vector_push_back
        benchmarks/benchmark_vector_push_back.cpp
)
target_include_directories(benchmark_vector_push_back PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

add_executable(benchmark_list_vs_vector
        benchmarks/benchmark_list_vs_vector.cpp
)
target_include_directories(benchmark_list_vs_vector PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

add_executable(false_sharing_demo
        benchmarks/false_sharing_demo.cpp
)
find_package(Threads REQUIRED)
target_link_libraries(false_sharing_demo PRIVATE Threads::Threads)

add_executable(struct_layout_experiment
        benchmarks/struct_layout_experiment.cpp
)
target_include_directories(struct_layout_experiment PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

add_executable(aos_vs_soa_benchmark
        benchmarks/aos_vs_soa_benchmark.cpp
)
target_include_directories(aos_vs_soa_benchmark PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

add_executable(branch_prediction_benchmark
        benchmarks/branch_prediction_benchmark.cpp
)
target_include_directories(branch_prediction_benchmark PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

add_executable(benchmark_new_delete_vs_reuse
        benchmarks/benchmark_new_delete_vs_reuse.cpp
)
target_include_directories(benchmark_new_delete_vs_reuse PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

add_executable(benchmark_fixed_pool
        benchmarks/benchmark_fixed_pool.cpp
)
target_include_directories(benchmark_fixed_pool PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

add_executable(benchmark_object_pool
        benchmarks/benchmark_object_pool.cpp
)
target_include_directories(benchmark_object_pool PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

enable_testing()
include(GoogleTest)
gtest_discover_tests(llp_tests)