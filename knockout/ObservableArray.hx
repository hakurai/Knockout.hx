package knockout;
import Array;
import knockout.Utils.Either;
import knockout.Observable;

abstract ObservableArray<T>(ObservableArrayExtern<T>) from ObservableArrayExtern<T>{

    public static var fn:Dynamic = ObservableArrayFn;

    inline function new(observable:ObservableArrayExtern<T>) {
        this = observable;
    }

    @:to inline public function toValue():Array<T> {
        return this.getter()();
    }

    inline public function pop():T {
        return this.pop();
    }

    inline public function push(x:T):Int {
        return this.push(x);
    }

    inline public function reverse():Void {
        this.reverse();
    }

    inline public function shift():T {
        return this.shift();
    }

    inline public function sort(f:T -> T -> Int):Void {
        this.sort(f);
    }

    @:overload(function(pos:Int, len:Int, a1:T):Array<T>{})
    @:overload(function(pos:Int, len:Int, a1:T, a2:T):Array<T>{})
    @:overload(function(pos:Int, len:Int, a1:T, a2:T, a3:T):Array<T>{})
    @:overload(function(pos:Int, len:Int, a1:T, a2:T, a3:T, a4:T):Array<T>{})
    @:overload(function(pos:Int, len:Int, a1:T, a2:T, a3:T, a4:T, a5:T):Array<T>{})
    inline public function splice(pos:Int, len:Int):Array<T> {
        return this.splice(pos, len);
    }

    inline public function unshift(x:T):Void {
        this.unshift(x);
    }

    inline public function slice(pos:Int, ?end:Int):Array<T> {
        return if (end == null) this.slice(pos) else this.slice(pos, end);
    }

    inline public function remove(valueOrPredicate:Either<T -> Bool, T>):Array<T> {
        return this.remove(valueOrPredicate);
    }

    inline public function removeAll(?arrayOfValues:Array<T>):Array<T> {
        return if (arrayOfValues == null) this.removeAll() else this.removeAll(arrayOfValues);
    }

    inline public function indexOf(item:T):Int {
        return this.indexOf(item);
    }

    inline public function replace(oldItem:T, newItem:T):Void {
        this.replace(oldItem, newItem);
    }

// Observable methods

    inline public function set(newValue:Array<T>):Observable<Array<T>> {
        return this.setter()(newValue);
    }

    inline public function get():Array<T> {
        return this.getter()();
    }

    inline public function peek():Array<T> {
        return this.peek();
    }

    inline public function valueHasMutated():Void {
        this.valueHasMutated();
    }

    inline public function valueWillMutate():Void {
        this.valueWillMutate();
    }

// Subscribable methods

    inline public function extend(source:Dynamic):Subscribable<Array<T>> {
        return this.extend(source);
    }

    inline public function dispose():Void {
        this.dispose();
    }

    inline public function getSubscriptionsCount():Int {
        return this.getSubscriptionsCount();
    }

    inline public function subscribe(call:Array<T> -> Void, ?callbackTarget:Dynamic, ?event:String):Subscription {
        return this.subscribe(call, callbackTarget, event);
    }
}


extern
class ObservableArrayExtern<T> extends ObservableExtern<Array<T>>{

public function pop():Null<T>;

public function push(x:T):Int;

public function reverse():Void;

public function shift():T;

public function sort( f:T -> T -> Int ):Void;

public function splice( pos:Int, len:Int ):Array<T>;

public function unshift( x:T ):Void;

public function slice( pos:Int, ?end:Int ):Array<T>;

public function remove(valueOrPredicate:Either<T -> Bool, T>):Array<T>;

public function removeAll(?arrayOfValues:Array<T>):Array<T>;

public function indexOf(item:T):Int;

public function replace(oldItem:T, newItem:T):Void;

}

@:native("ko.observableArray.fn")
extern
class ObservableArrayFn {

}