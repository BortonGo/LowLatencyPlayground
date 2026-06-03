cmake_minimum_required(VERSION 4.2)
project(LowLatencyPlayground)

set(CMAKE_CXX_STANDARD 23)

add_executable(LowLatencyPlayground main.cpp
        include/llp/latency_stats.hpp
        include/llp/benchmark_timer.hpp
        include/llp/object_pool.hpp
        include/llp/ring_buffer.hpp
        include/llp/spsc_queue.hpp
        include/llp/spin_lock.hpp
)
target_include_directories(LowLatencyPlayground PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}
        ${CMAKE_CURRENT_SOURCE_DIR}/include
        ${CMAKE_CURRENT_SOURCE_DIR}/tests
        ${CMAKE_CURRENT_SOURCE_DIR}/src
)

find_package(GTest CONFIG REQUIRED)
find_package(Threads REQUIRED)

# ============ TESTS ============
add_executable(llp_tests
        tests/test_latency_stats.cpp
        tests/test_benchmark_timer.cpp
        tests/test_object_pool.cpp
        tests/test_ring_buffer.cpp
        tests/test_spsc_queue.cpp
        tests/test_spin_lock.cpp
)
target_include_directories(llp_tests PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
target_link_libraries(llp_tests PRIVATE
        GTest::gtest_main
)
target_link_libraries(llp_tests PRIVATE Threads::Threads)

# ============ benchmark_vector_push_back ============
add_executable(benchmark_vector_push_back
        benchmarks/benchmark_vector_push_back.cpp
)
target_include_directories(benchmark_vector_push_back PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# ============ benchmark_list_vs_vector ============
add_executable(benchmark_list_vs_vector
        benchmarks/benchmark_list_vs_vector.cpp
)
target_include_directories(benchmark_list_vs_vector PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# ============ false_sharing_demo ============
add_executable(false_sharing_demo
        benchmarks/false_sharing_demo.cpp
)

target_link_libraries(false_sharing_demo PRIVATE Threads::Threads)

# ============ struct_layout_experiment ============
add_executable(struct_layout_experiment
        benchmarks/struct_layout_experiment.cpp
)
target_include_directories(struct_layout_experiment PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# ============ aos_vs_soa_benchmark ============
add_executable(aos_vs_soa_benchmark
        benchmarks/aos_vs_soa_benchmark.cpp
)
target_include_directories(aos_vs_soa_benchmark PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# ============ branch_prediction_benchmark ============
add_executable(branch_prediction_benchmark
        benchmarks/branch_prediction_benchmark.cpp
)
target_include_directories(branch_prediction_benchmark PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# ============ benchmark_new_delete_vs_reuse ============
add_executable(benchmark_new_delete_vs_reuse
        benchmarks/benchmark_new_delete_vs_reuse.cpp
)
target_include_directories(benchmark_new_delete_vs_reuse PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# ============ benchmark_fixed_pool ============
add_executable(benchmark_fixed_pool
        benchmarks/benchmark_fixed_pool.cpp
)
target_include_directories(benchmark_fixed_pool PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# ============ benchmark_object_pool ============
add_executable(benchmark_object_pool
        benchmarks/benchmark_object_pool.cpp
)
target_include_directories(benchmark_object_pool PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# ============ benchmark_no_allocation_pipeline ============
add_executable(benchmark_no_allocation_pipeline
        benchmarks/benchmark_no_allocation_pipeline.cpp
)
target_include_directories(benchmark_no_allocation_pipeline PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# ============ benchmark_ring_buffer ============
add_executable(benchmark_ring_buffer
        benchmarks/benchmark_ring_buffer.cpp
)
target_include_directories(benchmark_ring_buffer PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# ============ benchmark_spsc_queue ============
add_executable(benchmark_spsc_queue
        benchmarks/benchmark_spsc_queue.cpp
)
target_include_directories(benchmark_spsc_queue PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
target_link_libraries(benchmark_spsc_queue PRIVATE Threads::Threads)

# ============ benchmark_spsc_latency_histogram ============
add_executable(benchmark_spsc_latency_histogram
        benchmarks/benchmark_spsc_latency_histogram.cpp
)
target_include_directories(benchmark_spsc_latency_histogram PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
target_link_libraries(benchmark_spsc_latency_histogram PRIVATE Threads::Threads)

# ============ benchmark_atomic_counters ============
add_executable(benchmark_atomic_counters
        benchmarks/benchmark_atomic_counters.cpp
)
target_include_directories(benchmark_atomic_counters PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
target_link_libraries(benchmark_atomic_counters PRIVATE Threads::Threads)

# ============ benchmark_mutex_vs_spin_lock ============
add_executable(benchmark_mutex_vs_spin_lock
        benchmarks/benchmark_mutex_vs_spin_lock.cpp
)
target_include_directories(benchmark_mutex_vs_spin_lock PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
target_link_libraries(benchmark_mutex_vs_spin_lock PRIVATE Threads::Threads)

enable_testing()
include(GoogleTest)
gtest_discover_tests(llp_tests)