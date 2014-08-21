package knockout;

import js.html.Node;
@:native("ko.memoization")
extern
class Memoization {

    public static function memoize(callback: Dynamic -> Void):String;

    public static function unmemoize(memoId:String, callbackParams:Dynamic):Bool;

    public static function parseMemoText(memoText:String):String;

    public static function unmemoizeDomNodeAndDescendants(domNode:Node,extraCallbackParamsArray:Array<Dynamic>):Void;

}