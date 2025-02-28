#
# Copyright (c) Contributors to the Open 3D Engine Project.
# For complete copyright and license terms please see the LICENSE at the root of this distribution.
#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
#

o3de_pal_dir(pal_dir ${CMAKE_CURRENT_LIST_DIR}/Platform/${PAL_PLATFORM_NAME} ${gem_restricted_path} ${gem_path} ${gem_parent_relative_path})
include(${pal_dir}/PAL_${PAL_PLATFORM_NAME_LOWERCASE}.cmake)

if(PAL_TRAIT_PYTHONCOVERAGE_SUPPORTED)
    if(PAL_TRAIT_BUILD_HOST_TOOLS)
        ly_add_target(
            NAME PythonCoverage.Editor.Static STATIC
            NAMESPACE Gem
            FILES_CMAKE
                pythoncoverage_editor_files.cmake
            INCLUDE_DIRECTORIES
                PRIVATE
                    Source
                PUBLIC
                    Include
            COMPILE_DEFINITIONS
                PUBLIC
                    PYTHON_COVERAGE_EDITOR
                PRIVATE
                    ${LY_TEST_IMPACT_CONFIG_FILE_PATH_DEFINITION}
            BUILD_DEPENDENCIES
                PUBLIC
                    AZ::AzToolsFramework
            RUNTIME_DEPENDENCIES
                Gem::EditorPythonBindings.Editor
        )

        ly_add_target(
            NAME PythonCoverage.Editor GEM_MODULE
            NAMESPACE Gem
            AUTOMOC
            OUTPUT_NAME Gem.PythonCoverage.Editor
            FILES_CMAKE
                pythoncoverage_editor_shared_files.cmake
            COMPILE_DEFINITIONS
                PRIVATE
                    PYTHON_COVERAGE_EDITOR
            INCLUDE_DIRECTORIES
                PRIVATE
                    Source
                PUBLIC
                    Include
            BUILD_DEPENDENCIES
                PUBLIC
                    Gem::PythonCoverage.Editor.Static
        )

        ly_create_alias(NAME PythonCoverage.Tools    NAMESPACE Gem TARGETS Gem::PythonCoverage.Editor)
        ly_create_alias(NAME PythonCoverage.Builders NAMESPACE Gem TARGETS Gem::PythonCoverage.Editor)
    endif()
endif()
