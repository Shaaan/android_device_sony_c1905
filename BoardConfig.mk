USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/sony/C1905/BoardConfigVendor.mk

#TARGET_NO_BOOTLOADER := true
#TARGET_NO_RADIOIMAGE := true
BOARD_HAS_NO_MISC_PARTITION := true

# Platform
TARGET_BOOTLOADER_BOARD_NAME := MSM8227
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_SONY_HARDWARE

# Kernel Info
BOARD_KERNEL_CMDLINE := device/sony/C1905/config/cmdline.txt
BOARD_KERNEL_BASE := 0x00660000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RECOVERY_BASE := 0x00660000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

TARGET_PREBUILT_KERNEL := device/sony/C1905/kernel

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_OTA_ASSERT_DEVICE := C1905
