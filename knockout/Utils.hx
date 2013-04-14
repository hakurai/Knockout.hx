package knockout;
import knockout.Subscribable;
@:native("ko.utils")
extern
class Utils {

    public static function arrayForEach<T>(array:Array<T>, action:T -> Void):Void;

    public static function arrayFirst<T>(array:Array<T>, predicate:T -> Bool, ?predicateOwner:Dynamic):Null<T>;

    public static function arrayFilter<T>(array:Array<T>, predicate:T -> Bool):Array<T>;

    public static function arrayGetDistinctValues<T>(array:Array<T>):Array<T>;

    public static function arrayIndexOf<T>(array:Array<T>, item:T):Int;

    public static function arrayMap<T1,T2>(array:Array<T1>, mapping:T1 -> T2):Array<T2>;

    public static function arrayPushAll<T>(array:Array<T>, valuesToPush:Array<T>):Array<T>;

    public static function arrayRemoveItem<T>(array:Array<T>, itemToRemove:T):Void;

    public static function extend(target:Dynamic, source:Dynamic):Void;

    @:overload(function <T>(value:T):T{})
    public static function peekObservable<T>(value:Subscribable<T>):T;

    @:overload(function(min:Int, max:Int):Array<Int>{})
    public static function range(min:Subscribable<Int>, max:Subscribable<Int>):Array<Int>;

    @:overload(function <T>(value:T):T{})
    public static function unwrapObservable<T>(value:Subscribable<T>):T;
}
