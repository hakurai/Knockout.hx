package knockout;
@:native("ko.subscribable")
extern
class Subscribable<T> {

    public static var fn:Dynamic;

    public function extend(source:Dynamic):Subscribable<T>;

    public function dispose():Void;

    public function getSubscriptionsCount():Int;

    public function subscribe(call:T -> Void, ?callbackTarget:Dynamic, ?event:String):Void;

}