package knockout;

import knockout.ObservableArray;
import knockout.Observable;
@:native("ko")
extern
class Knockout<T> {

    static public function observable<T>(?value:T):Observable<T>;

    static public function observableArray<T>(value:Array<T>):ObservableArray<T>;
}