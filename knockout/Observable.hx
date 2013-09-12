package knockout;
import knockout.Observable;
import knockout.Subscribable;

abstract Observable<T>(ObservableExtern<T>) from ObservableExtern<T>{

    public static var fn:Dynamic = ObservableFn; 

    inline function new(observable:ObservableExtern<T>) {
        this = observable;
    }

    @:to inline public function toValue():T {
        return this.getter()();
    }

    @:op(A << B) static inline public function setValue<T>(lhs:Observable<T>, rhs:T):Void {
        lhs.set(rhs);
    }

    inline public function set(newValue:T):Observable<T> {
        return this.setter()(newValue);
    }

    inline public function get():T {
        return this.getter()();
    }

    inline public function peek():T {
        return this.peek();
    }

    inline public function valueHasMutated():Void {
        this.valueHasMutated();
    }

    inline public function valueWillMutate():Void {
        this.valueWillMutate();
    }

    // Subscribable methods

    inline public function extend(source:Dynamic):Subscribable<T>{
        return this.extend(source);
    }

    inline public function dispose():Void{
        this.dispose();
    }

    inline public function getSubscriptionsCount():Int{
        return this.getSubscriptionsCount();
    }

    inline public function subscribe(call:T -> Void, ?callbackTarget:Dynamic, ?event:String):Subscription{
        return this.subscribe(call, callbackTarget, event);
    }
}


extern
class ObservableExtern<T> extends Subscribable<T> {

inline function setter():T -> ObservableExtern<T> untyped {
    return this;
}

inline function getter():Void -> T untyped {
    return this;
}

public function peek():Null<T>;

public function valueHasMutated():Void;

public function valueWillMutate():Void;

}

@:native("ko.observable.fn")
extern
class ObservableFn {

}