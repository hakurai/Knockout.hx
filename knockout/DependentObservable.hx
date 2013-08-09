package knockout;
import knockout.Subscribable;

abstract DependentObservable<T>(DependentObservableExtern<T>) from DependentObservableExtern<T>{

    public static var fn:Dynamic = DependentObservableFn;

    inline function new(observable:DependentObservableExtern<T>) {
        this = observable;
    }

    @:to inline public function toValue():T {
        return this.getter()();
    }

    inline public function setValue(newValue:T):Void {
        return this.setter()(newValue);
    }

    inline public function getValue():Null<T> {
        return this.getter()();
    }

    inline public function peek():T {
        return this.peek();
    }

    inline public function isActive():Bool {
        return this.isActive();
    }

// Subscribable methods

    inline public function extend(source:Dynamic):Subscribable<T> {
        return this.extend(source);
    }

    inline public function dispose():Void {
        this.dispose();
    }

    inline public function getSubscriptionsCount():Int {
        return this.getSubscriptionsCount();
    }

    inline public function subscribe(call:T -> Void, ?callbackTarget:Dynamic, ?event:String):Subscription {
        return this.subscribe(call, callbackTarget, event);
    }
}


extern
class DependentObservableExtern<T> extends Subscribable<T>{

public static var fn:Dynamic;
public var value(get, set):T;

inline function setter():T -> Void untyped {
    return this;
}

inline function getter():Void -> T untyped {
    return this;
}

public function peek():Null<T>;

public function isActive():Bool;

}

@:native("ko.dependentObservable.fn")
extern
class DependentObservableFn {

}

typedef DependentObservableOption<T> = {
read:Void -> T,
write:T -> Void,
owner:Dynamic
};