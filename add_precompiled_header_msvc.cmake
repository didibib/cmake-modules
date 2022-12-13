# Set PCH for VS project
# https://stackoverflow.com/questions/148570/using-pre-compiled-headers-with-cmake
function(add_precompiled_header_msvc PCH_H PCH_CPP SOURCES)
    if(MSVC)
        message(STATUS "header file: ${PCH_H}, source path: ${PCH_CPP}")
        set_source_files_properties(${PCH_CPP} PROPERTIES COMPILE_FLAGS "/Yc${PCH_H}")
        set(sources ${${SOURCES}})
        message(STATUS "${sources}")
        set_source_files_properties(${sources} PROPERTIES COMPILE_FLAGS "/Yu${PCH_H}")
    endif(MSVC)
endfunction(add_precompiled_header_msvc)
