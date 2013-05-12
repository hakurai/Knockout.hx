package knockout;
class Main {

// test
    public static function main() {
        var observable = Knockout.observable("hello");
        var value = observable.get();

        Observable.fn.newMethod = function() {
            return 100;
        };

        observable.set("new text");

        var array1 = new Array<Int>();
        var array2 = new Array<Int>();

        Utils.arrayPushAll(array1, array2);
    }
}