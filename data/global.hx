// HAXE AND NDLL CODE BY LUNAR CREDIT IF USE!!
import funkin.backend.utils.NdllUtil;
import openfl.Lib;

#if windows
static var enable_window_transperency:Void->Void = NdllUtil.getFunction("transparent", "win32_enable_window_transparent", 0);
static var disable_window_transperency:Void->Void = NdllUtil.getFunction("transparent", "win32_disable_window_transparent", 0);
#else // When I eventaully figure out the code for other platforms (x11 hates me)
static var enable_window_transperency:Void->Void = function () {};
static var disable_window_transperency:Void->Void = function () {};
#end

static function setWindowTransparent(transparent:Bool) {
	if (transparent) {
		enable_window_transperency();
		FlxG.cameras.cameraAdded.add(transparentFlxCamera);

		for (camera in FlxG.cameras.list) transparentFlxCamera(camera);
		Lib.application.window.stage.color = null;
	} else {
		disable_window_transperency();
		FlxG.cameras.cameraAdded.remove(transparentFlxCamera);
	}
}

static function transparentFlxCamera(camera:FlxCamera) {
	if (camera != null) camera.bgColor = 0x00000000;
}