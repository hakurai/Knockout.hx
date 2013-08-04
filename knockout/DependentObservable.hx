package knockout;
import knockout.Subscribable;
@:native("ko.computed")
extern
class DependentObservable<T> extends Subscribable<T>{

    public static var fn:Dynamic;

    inline private function setter():T -> Void untyped {
        return this;
    }

    inline private function getter():Void -> T untyped {
        return this;
    }

    inline public function set(newValue:T):Void {
        return setter()(newValue);
    }

    inline public function get():Null<T> {
        return getter()();
    }

    public function peek():Null<T>;

    public function isActive():Bool;

}
