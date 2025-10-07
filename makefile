CXX = clang++
CXXFLAGS = -std=c++17

SRC_DIR = src
BENCH_DIR = benchmark
BUILD_DIR = build

INCLUDES = -I$(SRC_DIR)

$(shell mkdir -p $(BUILD_DIR))

all: $(BUILD_DIR)/benchmark

$(BUILD_DIR)/benchmark: $(SRC_DIR)/wht_naive.cpp $(SRC_DIR)/wht_neon.cpp $(BENCH_DIR)/benchmark.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) $^ -o $@

clean:
	rm -rf $(BUILD_DIR)