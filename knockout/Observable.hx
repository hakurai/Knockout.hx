package knockout;
import knockout.Subscribable;
@:native("ko.observable")
extern
class Observable<T> extends Subscribable<T> {

    public static var fn(default,null):Dynamic;
    public var value(get,set):T;

    inline private function setter():T -> Subscription untyped {
        return this;
    }

    inline private function getter():Void -> T untyped {
        return this;
    }

    inline public function set_value(newValue:T):T {
        setter()(newValue);
        return newValue;
    }

    inline public function get_value():Null<T> {
        return getter()();
    }

    inline public function set(newValue:T):Subscription {
        return setter()(newValue);
    }

    inline public function get():Null<T> {
        return getter()();
    }

    public function peek():Null<T>;

    public function valueHasMutated():Void;

    public function valueWillMutate():Void;

}