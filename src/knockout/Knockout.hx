package knockout;

import knockout.Observable;
@:native("ko")
extern
class Knockout<T> {

    static public function observable<T>(value:T):Observable<T>;

}