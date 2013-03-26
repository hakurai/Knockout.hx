package knockout;
@:native("ko.utils")
extern
class Utils {

    public static function arrayForEach(array:Array<T>, action:T -> Void):Void;

    public static function arrayFirst(array:Array<T>, predicate:T -> Bool, ?predicateOwner:Dynamic):Null<T>;

    public static function arrayFilter(array:Array<T>, predicate:T -> Bool):Array<T>;

    public static function arrayGetDistinctValues(array:Array<T>):Array<T>;

    public static function arrayIndexOf(array:Array<T>, item:T):Int;

    public static function arrayMap(array:Array<T1>, mapping:T1 -> T2):Array<T2>;

    public static function arrayPushAll(array:Array<T>, valuesToPush:Array<T>):Array<T>;

    public static function arrayRemoveItem(array:Array<T>, itemToRemove:T):Void;

    public static function extend(target:Dynamic, source:Dynamic):Void;

    @:overload(function(value:T):T{})
    public static function peekObservable(value:Subscribable<T>):T;

    @:overload(function(min:Int, max:Int):Array<Int>{})
    public static function range(min:Subscribable<Int>, max:Subscribable<Int>):Array<Int>;

    @:overload(function(value:T):T{})
    public static function unwrapObservable(value:Subscribable<T>):T;
}
