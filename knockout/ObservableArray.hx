package knockout;
import knockout.Observable;
extern
class ObservableArray<T> extends ObservableExtern<Array<T>>{

    public static var fn(default,null):Dynamic;

    public function pop():Null<T>;

    function push(x : T) : Int;

    function reverse() : Void;

    function shift() : Null<T>;

    function sort( f : T -> T -> Int ) : Void;

    function splice( pos : Int, len : Int ) : Array<T>;

    function unshift( x : T ) : Void;

    function slice( pos : Int, ?end : Int ) : Array<T>;

    @:overload(function(valueOrPredicate:T):Array<T>{})
    public function remove(valueOrPredicate:T -> Bool):Array<T>;

    public function removeAll(?arrayOfValues:Array<T>):Array<T>;

    public function indexOf(item:T):Int;

    public function replace(oldItem:T, newItem:T):Void;

}
