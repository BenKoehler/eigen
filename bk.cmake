SET(BK_EIGEN_VERSION "3.4")

function(link_eigen target MOD)
    target_include_directories(${target} ${MOD} ${PROJECT_SOURCE_DIR}/thirdparty/eigen/include/eigen3)
endfunction()
