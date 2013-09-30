#inherit from the common blue definitions
-include device/sony/blue-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH += device/sony/nicki/include

TARGET_KERNEL_CONFIG := kangbang_defconfig

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 18

# the following two sizes are generous guesses
# since these partitions are not visible
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/nicki/bluetooth

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_OTA_ASSERT_DEVICE := nicki,C1905

# inherit from the proprietary version
-include vendor/sony/nicki/BoardConfigVendor.mk