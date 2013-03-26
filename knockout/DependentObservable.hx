package knockout;
import knockout.Subscribable;
@:native("ko.computed")
extern
class DependentObservable<T> extends Subscribable<T>{

    public static var fn:Dynamic;

    public function peek():Null<T>;

    public function isActive():Bool;

}
