package knockout;
import knockout.Subscribable;
extern
class Observable<T> extends Subscribable<T> {

    public function new(?value:T):Void;

    inline private function self():Void -> T untyped {
        return this;
    }

    inline public function get():T {
        return self()();
    }

    public function peek():T;

    public function valueHasMutated():Void;

    public function valueWillMutate():Void;

}