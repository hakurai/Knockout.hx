package knockout;
@:native("ko.observable")
extern
class Observable<T> extends Subscribable<T> {

    public static var fn:Dynamic;

    inline private function self():Void -> T untyped {
        return this;
    }

    inline public function value():Null<T> {
        return self()();
    }

    public function peek():Null<T>;

    public function valueHasMutated():Void;

    public function valueWillMutate():Void;

}