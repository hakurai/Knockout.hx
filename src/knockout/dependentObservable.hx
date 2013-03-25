package knockout;
@:native("ko.computed")
extern
class dependentObservable extends Subscribable{

    public static var fn:Dynamic;

    public function peek():Null<T>;

    public function isActive():Bool;

}
