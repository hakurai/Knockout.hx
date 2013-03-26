package knockout;

@:native("ko")
extern
class Knockout<T> {

    public static var extenders:Dynamic;

    public static function observable<T>(?value:T):Observable<T>;

    public static function observableArray<T>(value:Array<T>):ObservableArray<T>;

    public static function computed<T>(evaluatorFunctionOrOptions:Void -> T):DependentObservable<T>;
}