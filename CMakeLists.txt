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
        include/llp/market_data_message.hpp
        include/llp/binary_feed_parser.hpp
        include/llp/market_data_pipeline.hpp
        include/llp/order_book.hpp
        include/llp/order.hpp
        include/llp/order_book_side.hpp
        include/llp/matching_engine.hpp
        include/llp/trade_buffer.hpp
        include/llp/order_book_side_flat.hpp
        include/llp/price_level_array_book_side.hpp
        include/llp/flat_matching_engine.hpp
        include/llp/order_id_index.hpp
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
        tests/test_binary_feed_parser.cpp
        tests/test_market_data_pipeline.cpp
        tests/test_order_book.cpp
        tests/test_order_book_side.cpp
        tests/test_matching_engine.cpp
        tests/test_trade_buffer.cpp
        tests/test_order_book_side_flat.cpp
        tests/test_price_level_array_book_side.cpp
        tests/test_flat_matching_engine.cpp
        tests/test_order_id_index.cpp
)
target_include_directories(llp_tests PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
target_link_libraries(llp_tests PRIVATE
        GTest::gtest_main
        Threads::Threads
)

function(add_llp_benchmark target source)
    add_executable(${target} ${source})
    target_include_directories(${target} PRIVATE
            ${CMAKE_CURRENT_SOURCE_DIR}/include
    )
    if (ARGN)
        target_link_libraries(${target} PRIVATE ${ARGN})
    endif()
endfunction()

# ============ Stage 1. Measurement Basics ============
add_llp_benchmark(benchmark_vector_push_back
        benchmarks/stage_01_measurement_basics/benchmark_vector_push_back.cpp)
add_llp_benchmark(benchmark_list_vs_vector
        benchmarks/stage_01_measurement_basics/benchmark_list_vs_vector.cpp)
add_llp_benchmark(benchmark_remove_if_vs_erase_if
        benchmarks/stage_01_measurement_basics/benchmark_remove_if_vs_erase_if.cpp)

# ============ Stage 2. Cache Locality ============
add_llp_benchmark(false_sharing_demo
        benchmarks/stage_02_cache_locality/false_sharing_demo.cpp
        Threads::Threads)
add_llp_benchmark(struct_layout_experiment
        benchmarks/stage_02_cache_locality/struct_layout_experiment.cpp)
add_llp_benchmark(aos_vs_soa_benchmark
        benchmarks/stage_02_cache_locality/aos_vs_soa_benchmark.cpp)
add_llp_benchmark(branch_prediction_benchmark
        benchmarks/stage_02_cache_locality/branch_prediction_benchmark.cpp)

# ============ Stage 3. Allocations And Memory ============
add_llp_benchmark(benchmark_new_delete_vs_reuse
        benchmarks/stage_03_allocations_memory/benchmark_new_delete_vs_reuse.cpp)
add_llp_benchmark(benchmark_fixed_pool
        benchmarks/stage_03_allocations_memory/benchmark_fixed_pool.cpp)
add_llp_benchmark(benchmark_object_pool
        benchmarks/stage_03_allocations_memory/benchmark_object_pool.cpp)
add_llp_benchmark(benchmark_no_allocation_pipeline
        benchmarks/stage_03_allocations_memory/benchmark_no_allocation_pipeline.cpp)

# ============ Stage 4. Queues And Concurrency ============
add_llp_benchmark(benchmark_ring_buffer
        benchmarks/stage_04_queues_and_concurrency/benchmark_ring_buffer.cpp)
add_llp_benchmark(benchmark_spsc_queue
        benchmarks/stage_04_queues_and_concurrency/benchmark_spsc_queue.cpp
        Threads::Threads)
add_llp_benchmark(benchmark_spsc_latency_histogram
        benchmarks/stage_04_queues_and_concurrency/benchmark_spsc_latency_histogram.cpp
        Threads::Threads)

# ============ Stage 5. Atomics And Memory Model ============
add_llp_benchmark(benchmark_atomic_counters
        benchmarks/stage_05_atomics_memory_model/benchmark_atomic_counters.cpp
        Threads::Threads)
add_llp_benchmark(benchmark_mutex_vs_spin_lock
        benchmarks/stage_05_atomics_memory_model/benchmark_mutex_vs_spin_lock.cpp
        Threads::Threads)
add_llp_benchmark(benchmark_memory_order_message_passing
        benchmarks/stage_05_atomics_memory_model/benchmark_memory_order_message_passing.cpp
        Threads::Threads)
add_llp_benchmark(benchmark_cas_counter
        benchmarks/stage_05_atomics_memory_model/benchmark_cas_counter.cpp
        Threads::Threads)

# ============ Stage 6. Market Data Pipeline ============
add_llp_benchmark(benchmark_binary_feed_parser
        benchmarks/stage_06_market_data_pipeline/benchmark_binary_feed_parser.cpp)
add_llp_benchmark(benchmark_market_data_pipeline
        benchmarks/stage_06_market_data_pipeline/benchmark_market_data_pipeline.cpp
        Threads::Threads)
add_llp_benchmark(benchmark_order_book
        benchmarks/stage_06_market_data_pipeline/benchmark_order_book.cpp)
add_llp_benchmark(benchmark_pipeline_batching
        benchmarks/stage_06_market_data_pipeline/benchmark_pipeline_batching.cpp
        Threads::Threads)

# ============ Stage 7. Matching Engine ============
add_llp_benchmark(benchmark_matching_engine
        benchmarks/stage_07_matching_engine/benchmark_matching_engine.cpp)
add_llp_benchmark(benchmark_vector_vs_trade_buffer
        benchmarks/stage_07_matching_engine/benchmark_vector_vs_trade_buffer.cpp)
add_llp_benchmark(benchmark_matching_engine_latency
        benchmarks/stage_07_matching_engine/benchmark_matching_engine_latency.cpp)
add_llp_benchmark(benchmark_matching_engine_allocation
        benchmarks/stage_07_matching_engine/benchmark_matching_engine_allocation.cpp)
add_llp_benchmark(benchmark_price_level_storage
        benchmarks/stage_07_matching_engine/benchmark_price_level_storage.cpp)
add_llp_benchmark(benchmark_matching_engine_batching
        benchmarks/stage_07_matching_engine/benchmark_matching_engine_batching.cpp)

# ============ Stage 8. Profiling ============
add_llp_benchmark(benchmark_price_level_array_book_side
        benchmarks/stage_08_profiling/benchmark_price_level_array_book_side.cpp)
add_llp_benchmark(benchmark_flat_matching_engine
        benchmarks/stage_08_profiling/benchmark_flat_matching_engine.cpp)
add_llp_benchmark(benchmark_flat_matching_engine_hot_path
        benchmarks/stage_08_profiling/benchmark_flat_matching_engine_hot_path.cpp)
add_llp_benchmark(benchmark_order_id_idx
        benchmarks/stage_08_profiling/benchmark_order_id_idx.cpp)
add_llp_benchmark(benchmark_price_level_container
        benchmarks/stage_08_profiling/benchmark_price_level_container.cpp)

# ============ Stage 9. Language level optimization ============
add_llp_benchmark(benchmark_optimization_levels
        benchmarks/stage_09_language_level_optimization/benchmark_optimization_levels.cpp)
add_llp_benchmark(benchmark_branch_distribution
        benchmarks/stage_09_language_level_optimization/benchmark_branch_distribution.cpp)
add_llp_benchmark(benchmark_inline_noinline
        benchmarks/stage_09_language_level_optimization/benchmark_inline_noinline.cpp)
add_llp_benchmark(benchmark_manual_simd_price_filter
        benchmarks/stage_09_language_level_optimization/benchmark_manual_simd_price_filter.cpp)
add_llp_benchmark(benchmark_simd_batch_validation
        benchmarks/stage_09_language_level_optimization/benchmark_simd_batch_validation.cpp)
add_llp_benchmark(benchmark_memory_access_patterns
        benchmarks/stage_09_language_level_optimization/benchmark_memory_access_patterns.cpp)
add_llp_benchmark(benchmark_software_prefetch
        benchmarks/stage_09_language_level_optimization/benchmark_software_prefetch.cpp)
add_llp_benchmark(benchmark_hot_cold_split
        benchmarks/stage_09_language_level_optimization/benchmark_hot_cold_split.cpp)
add_llp_benchmark(benchmark_alignment_scan
        benchmarks/stage_09_language_level_optimization/benchmark_alignment_scan.cpp)
add_llp_benchmark(benchmark_dependency_chain_ilp
        benchmarks/stage_09_language_level_optimization/benchmark_dependency_chain_ilp.cpp)

enable_testing()
include(GoogleTest)
gtest_discover_tests(llp_tests)
