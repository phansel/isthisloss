package(default_visibility = ["//visibility:private"])

licenses(["notice"])  # Apache 2.0

android_binary(
    name = "isthisloss",
    srcs = glob(["java/**/*.java"]),
    assets = [
	"//tensorflow/contrib/lite/java/demo/app/src/main/assets:mobilenet_v1_q.tflite",
    	"//tensorflow/contrib/lite/java/demo/app/src/main/assets:loss_labels.txt",
    ],
    assets_dir = "",
    custom_package = "party.eigenloss.android.isthisloss",
    manifest = "AndroidManifest.xml",
    nocompress_extensions = [
        ".tflite",
    ],
    resource_files = glob(["res/**"]),
    # In some platforms we don't have an Android SDK/NDK and this target
    # can't be built. We need to prevent the build system from trying to
    # use the target in that case.
    tags = ["manual"],
    deps = [
        "//tensorflow/contrib/lite/java:tensorflowlite",
        "//tensorflow/contrib/lite/java/src/testhelper/java/org/tensorflow/lite:testhelper",
        "@androidsdk//com.android.support:support-v13-25.2.0",
        "@androidsdk//com.android.support:support-v4-25.2.0",
    ],
)
