NDKROOT := /Applications/adt-bundle-mac-x86_64-20140624/android-ndk-r10e
LOCAL_PATH := $(call my-dir)
PROJECT_ROOT_PATH := $(LOCAL_PATH)/../../../../../../
CORE_RELATIVE_PATH := ../../../../../../core/
CORE_FRAMEWORK_RELATIVE_PATH := $(CORE_RELATIVE_PATH)/framework/
CORE_FRAMEWORK_ENTITY_RELATIVE_PATH := $(CORE_FRAMEWORK_RELATIVE_PATH)/entity/
CORE_FRAMEWORK_MATH_RELATIVE_PATH := $(CORE_FRAMEWORK_RELATIVE_PATH)/math/
CORE_FRAMEWORK_UI_RELATIVE_PATH := $(CORE_FRAMEWORK_RELATIVE_PATH)/ui/
CORE_FRAMEWORK_UI_OPENGLES_RELATIVE_PATH := $(CORE_FRAMEWORK_UI_RELATIVE_PATH)/opengles/
CORE_FRAMEWORK_UTIL_RELATIVE_PATH := $(CORE_FRAMEWORK_RELATIVE_PATH)/util/
CORE_GAME_RELATIVE_PATH := $(CORE_RELATIVE_PATH)/game/
CORE_GAME_UI_RELATIVE_PATH := $(CORE_GAME_RELATIVE_PATH)/ui/
CORE_GAME_UI_OPENGLES_RELATIVE_PATH := $(CORE_GAME_UI_RELATIVE_PATH)/opengles/

include $(CLEAR_VARS)

LOCAL_MODULE    := game
LOCAL_CFLAGS    := -Wall -Wextra -DGGD_OPENGL_ES -DGGD_OPENGL_ANDROID -DGL_GLEXT_PROTOTYPES=1

# Android
LOCAL_SRC_FILES := platform_asset_utils.c
LOCAL_SRC_FILES += renderer_wrapper.cpp
LOCAL_SRC_FILES += AndroidOpenGLESGameScreen.cpp

# Game Framework
LOCAL_C_INCLUDES += $(PROJECT_ROOT_PATH)/core/framework/
LOCAL_C_INCLUDES += $(PROJECT_ROOT_PATH)/core/framework/entity/
LOCAL_C_INCLUDES += $(PROJECT_ROOT_PATH)/core/framework/math/
LOCAL_C_INCLUDES += $(PROJECT_ROOT_PATH)/core/framework/ui/
LOCAL_C_INCLUDES += $(PROJECT_ROOT_PATH)/core/framework/ui/opengles/
LOCAL_C_INCLUDES += $(PROJECT_ROOT_PATH)/core/framework/util/

LOCAL_SRC_FILES += $(CORE_FRAMEWORK_ENTITY_RELATIVE_PATH)/Entity.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_ENTITY_RELATIVE_PATH)/PhysicalEntity.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_MATH_RELATIVE_PATH)/Circle.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_MATH_RELATIVE_PATH)/Line.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_MATH_RELATIVE_PATH)/OverlapTester.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_MATH_RELATIVE_PATH)/Rectangle.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_MATH_RELATIVE_PATH)/Triangle.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_MATH_RELATIVE_PATH)/Vector2D.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_RELATIVE_PATH)/CircleBatcher.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_RELATIVE_PATH)/Font.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_RELATIVE_PATH)/GpuProgramWrapper.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_RELATIVE_PATH)/LineBatcher.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_RELATIVE_PATH)/RectangleBatcher.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_RELATIVE_PATH)/SpriteBatcher.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_RELATIVE_PATH)/TextureRegion.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_RELATIVE_PATH)/TouchEvent.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_OPENGLES_RELATIVE_PATH)/asset_utils.c
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_OPENGLES_RELATIVE_PATH)/image.c
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_OPENGLES_RELATIVE_PATH)/ColorProgram.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_OPENGLES_RELATIVE_PATH)/OpenGLESCircleBatcher.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_OPENGLES_RELATIVE_PATH)/OpenGLESLineBatcher.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_OPENGLES_RELATIVE_PATH)/OpenGLESManager.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_OPENGLES_RELATIVE_PATH)/OpenGLESRectangleBatcher.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_OPENGLES_RELATIVE_PATH)/OpenGLESSpriteBatcher.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_OPENGLES_RELATIVE_PATH)/OpenGLESTextureGpuProgramWrapper.cpp
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_OPENGLES_RELATIVE_PATH)/platform_file_utils.c
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_OPENGLES_RELATIVE_PATH)/shader.c
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_OPENGLES_RELATIVE_PATH)/texture.c
LOCAL_SRC_FILES += $(CORE_FRAMEWORK_UI_OPENGLES_RELATIVE_PATH)/TextureProgram.cpp

# Game
LOCAL_C_INCLUDES += $(PROJECT_ROOT_PATH)/core/game/
LOCAL_C_INCLUDES += $(PROJECT_ROOT_PATH)/core/game/ui/
LOCAL_C_INCLUDES += $(PROJECT_ROOT_PATH)/core/game/ui/opengles/

LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/AcidDrop.cpp
LOCAL_SRC_FILES += $(CORE_GAME_UI_RELATIVE_PATH)/Assets.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/Asteroid.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/BackgroundElements.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/BlueCreep.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/BlueCreepOne.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/BlueCreepThree.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/BlueCreepTwo.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/BlueMiniCreep.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/BossCreep.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/CoreShipModule.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/Creep.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/CreepBodyPart.cpp
LOCAL_SRC_FILES += $(CORE_GAME_UI_RELATIVE_PATH)/Dialog.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/ElectricBolt.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/ElectricTower.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/Explosion.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/FireBolt.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/FireTower.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/GameListener.cpp
LOCAL_SRC_FILES += $(CORE_GAME_UI_RELATIVE_PATH)/GameScreen.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/GreenCreep.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/GreenCreepOne.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/GreenCreepThree.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/GreenCreepTwo.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/GreenMiniCreep.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/IceBlast.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/IceTower.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/LazerBeam.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/LazerTower.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/Missile.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/MissileTower.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/PoisonTower.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/Projectile.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/ProjectileParticle.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/ProjectileTower.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/RedCreep.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/RedCreepOne.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/RedCreepThree.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/RedCreepTwo.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/RedMiniCreep.cpp
LOCAL_SRC_FILES += $(CORE_GAME_UI_RELATIVE_PATH)/Renderer.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/ShipModule.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/Spawn.cpp
LOCAL_SRC_FILES += $(CORE_GAME_UI_RELATIVE_PATH)/Text.cpp
LOCAL_SRC_FILES += $(CORE_GAME_UI_RELATIVE_PATH)/TimeButton.cpp
LOCAL_SRC_FILES += $(CORE_GAME_UI_RELATIVE_PATH)/TouchCursor.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/Tower.cpp
LOCAL_SRC_FILES += $(CORE_GAME_UI_RELATIVE_PATH)/TowerCursor.cpp
LOCAL_SRC_FILES += $(CORE_GAME_UI_RELATIVE_PATH)/TowerOptionButton.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/ToxicCloud.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/World.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/WorldPlatform.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/YellowCreep.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/YellowCreepOne.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/YellowCreepThree.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/YellowCreepTwo.cpp
LOCAL_SRC_FILES += $(CORE_GAME_RELATIVE_PATH)/YellowMiniCreep.cpp
LOCAL_SRC_FILES += $(CORE_GAME_UI_OPENGLES_RELATIVE_PATH)/OpenGLESGameScreen.cpp
LOCAL_SRC_FILES += $(CORE_GAME_UI_OPENGLES_RELATIVE_PATH)/OpenGLESRenderer.cpp

# 3rd Party
LOCAL_C_INCLUDES += $(PROJECT_ROOT_PATH)/3rdparty/
LOCAL_STATIC_LIBRARIES := libpng
LOCAL_LDLIBS := -lGLESv2 -landroid

include $(BUILD_SHARED_LIBRARY)

$(call import-add-path, $(PROJECT_ROOT_PATH)/3rdparty)
$(call import-module, libpng)