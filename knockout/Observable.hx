package knockout;
import knockout.Subscribable;
@:native("ko.observable")
extern
class Observable<T> extends Subscribable<T> {

    public static var fn:Dynamic;

    inline private function setter():T -> Void untyped {
        return this;
    }

    inline private function getter():Void -> T untyped {
        return this;
    }

    inline public function setValue(newValue:T):Void {
        return setter()(newValue);
    }

    inline public function getValue():Null<T> {
        return getter()();
    }

    public function peek():Null<T>;

    public function valueHasMutated():Void;

    public function valueWillMutate():Void;

}