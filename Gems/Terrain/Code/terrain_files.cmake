#
# Copyright (c) Contributors to the Open 3D Engine Project.
# For complete copyright and license terms please see the LICENSE at the root of this distribution.
#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
#

set(FILES
    Include/Terrain/Ebuses/TerrainAreaSurfaceRequestBus.h
    Include/Terrain/TerrainDataConstants.h
    Source/Components/TerrainHeightGradientListComponent.cpp
    Source/Components/TerrainHeightGradientListComponent.h
    Source/Components/TerrainLayerSpawnerComponent.cpp
    Source/Components/TerrainLayerSpawnerComponent.h
    Source/Components/TerrainPhysicsColliderComponent.cpp
    Source/Components/TerrainPhysicsColliderComponent.h
    Source/Components/TerrainSurfaceDataSystemComponent.cpp
    Source/Components/TerrainSurfaceDataSystemComponent.h
    Source/Components/TerrainSurfaceGradientListComponent.cpp
    Source/Components/TerrainSurfaceGradientListComponent.h
    Source/Components/TerrainSystemComponent.cpp
    Source/Components/TerrainSystemComponent.h
    Source/Components/TerrainWorldComponent.cpp
    Source/Components/TerrainWorldComponent.h
    Source/Components/TerrainWorldDebuggerComponent.cpp
    Source/Components/TerrainWorldDebuggerComponent.h
    Source/Components/TerrainWorldRendererComponent.cpp
    Source/Components/TerrainWorldRendererComponent.h
    Source/TerrainRaycast/TerrainRaycastContext.cpp
    Source/TerrainRaycast/TerrainRaycastContext.h
    Source/TerrainRenderer/Components/TerrainSurfaceMaterialsListComponent.cpp
    Source/TerrainRenderer/Components/TerrainSurfaceMaterialsListComponent.h
    Source/TerrainRenderer/Components/TerrainMacroMaterialComponent.cpp
    Source/TerrainRenderer/Components/TerrainMacroMaterialComponent.h
    Source/TerrainRenderer/Aabb2i.cpp
    Source/TerrainRenderer/Aabb2i.h
    Source/TerrainRenderer/BindlessImageArrayHandler.cpp
    Source/TerrainRenderer/BindlessImageArrayHandler.h
    Source/TerrainRenderer/ClipmapBounds.cpp
    Source/TerrainRenderer/ClipmapBounds.h
    Source/TerrainRenderer/Passes/TerrainClipmapComputePass.cpp
    Source/TerrainRenderer/Passes/TerrainClipmapComputePass.h
    Source/TerrainRenderer/TerrainClipmapManager.cpp
    Source/TerrainRenderer/TerrainClipmapManager.h
    Source/TerrainRenderer/TerrainFeatureProcessor.cpp
    Source/TerrainRenderer/TerrainFeatureProcessor.h
    Source/TerrainRenderer/TerrainDetailMaterialManager.cpp
    Source/TerrainRenderer/TerrainDetailMaterialManager.h
    Source/TerrainRenderer/TerrainMacroMaterialManager.cpp
    Source/TerrainRenderer/TerrainMacroMaterialManager.h
    Source/TerrainRenderer/TerrainMeshManager.cpp
    Source/TerrainRenderer/TerrainMeshManager.h
    Source/TerrainRenderer/TerrainAreaMaterialRequestBus.h
    Source/TerrainRenderer/TerrainMacroMaterialBus.cpp
    Source/TerrainRenderer/TerrainMacroMaterialBus.h
    Source/TerrainRenderer/Vector2i.cpp
    Source/TerrainRenderer/Vector2i.h
    Source/TerrainSystem/TerrainSystem.cpp
    Source/TerrainSystem/TerrainSystem.h
    Source/TerrainSystem/TerrainSystemBus.h
)
