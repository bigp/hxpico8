package;
#if !macro
/**
 * ...
 * @author YellowAfterlife
 */
class Std {
	static function random(x:Int):Int {
		return Pico.flr(Pico.rand(x));
	}
}
#else
@:coreApi extern class Std {
	static function is(v:Dynamic, t:Dynamic):Bool;
	static function instance<T:{},S:T>(value:T, c:Class<S>):S;
	static function string(v:Dynamic):String;
	static function int(x:Float):Int;
	static function parseInt(s:String):Null<Int>;
	static function parseFloat(s:String):Null<Float>;
	static function random(x:Int):Int;
}
#end