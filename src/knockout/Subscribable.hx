package knockout;
extern
class Subscribable<T> {

    public function new(?value:T):Void;

    public function extend(source:Dynamic):Subscribable<T>;

    public function dispose():Void;

    public function getSubscriptionsCount():Int;

}