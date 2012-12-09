#
# This is the ultimate make file for all "software releated" product definition.
# We add here things like file copying, configuring of packages (i.e. APK's to be built) etc.
# Here we also add the copying and population of libhoudini to support ARM emulation.
#
# In this example I added a lot of packages - when building your own device do not do that. Most of them
# should yield useless, and just make it harder for you to find what you really want in the app menu
#
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/ron_init.sh:system/etc/ron_init.sh \
    $(LOCAL_PATH)/init.sh:system/etc/init.sh 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/permissions/features.xml:system/etc/permissions/features.xml \
    $(LOCAL_PATH)/system/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    $(LOCAL_PATH)/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    $(LOCAL_PATH)/system/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    $(LOCAL_PATH)/system/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/armstuff/system/lib/libdvm_houdini.so:system/lib/libdvm_houdini.so \
    $(LOCAL_PATH)/armstuff/system/lib/libhoudini.so:system/lib/libhoudini.so 

PRODUCT_COPY_FILES += \
    $(foreach f,$(wildcard $(LOCAL_PATH)/armstuff/system/lib/arm/*),$(f):system/lib/arm/$(notdir $(f)))






PRODUCT_PACKAGES += \
AccelerometerPlay \
ActionBarCompat \
Alarm \
AliasActivity \
AndroidBeamDemo \
ApiDemos \
BackupRestore \
BasicGLSurfaceView \
BluetoothChat \
BluetoothHDP \
BrowserPlugin \
BusinessCard \
Compass \
ContactManager \
CrossCompatibility \
CubeLiveWallpaper \
FixedGridLayout \
GlobalTime \
HeavyWeight \
HelloActivity \
Home \
HoneycombGallery \
JetBoy \
LunarLander \
MailSync \
MultiResolution \
MySampleRss \
NFCDemo \
NotePad \
Obb \
RandomMusicPlayer \
RenderScript \
RSSReader \
SampleSyncAdapter \
SearchableDictionary \
SimpleJNI \
SipDemo \
SkeletonApp \
Snake \
SoftKeyboard \
SpellChecker \
Spinner \
SpinnerTest \
StackWidget \
Support13Demos \
Support4Demos \
TicTacToeLib \
TicTacToeMain \
ToyVpn \
training \
TtsEngine \
USB \
VoicemailProviderDemo \
VoiceRecognitionService \
WeatherListWidget \
WiFiDirectDemo \
Wiktionary \
WiktionarySimple \
XmlAdapters \


#doesn't do anything    ApiDemos \
#    BasicGLSurfaceView \



$(call inherit-product,$(LOCAL_PATH)/../common/generic_nubo.mk)

PRODUCT_NAME := desktop_generic
PRODUCT_DEVICE := andevcon
