package knockout;
class Main {

// test
    public static function main() {
        var observable = Knockout.observable("hello");
        var value = observable.getValue();

        Observable.fn.newMethod = function() {
            return 100;
        };

        observable.setValue("new text");

        var array1 = new Array<Int>();
        var array2 = new Array<Int>();

        Utils.arrayPushAll(array1, array2);
    }
}