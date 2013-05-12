package knockout;

import js.Dom.HtmlDom;
class BindingContext {

    public var parent(get_parent, null):Null<Dynamic>;
    public var parents(get_parents, null):Null<Array<Dynamic>>;
    public var root(get_root, null):Dynamic;
    public var data(get_data, null):Null<Dynamic>;
    public var index(get_index, null):Null<Int>;
    public var parentContext(get_parentContext, null):Null<BindingContext>;
    public var context(get_context, null):BindingContext;
    public var element(get_element, null):HtmlDom;

    private inline function get_parent():Null<Dynamic> {
        return untyped __js__("this.$parent");
    }

    private inline function get_parents():Null<Dynamic> {
        return untyped __js__("this.$parents");
    }

    private inline function get_root():Null<Dynamic> {
        return untyped __js__("this.$root");
    }

    private inline function get_data():Null<Dynamic> {
        return untyped __js__("this.$data");
    }

    private inline function get_index():Null<Dynamic> {
        return untyped __js__("this.$index");
    }

    private inline function get_parentContext():Null<Dynamic> {
        return untyped __js__("this.$parentContext");
    }

    private inline function get_context():Null<Dynamic> {
        return untyped __js__("this.$context");
    }

    private inline function get_element():Null<Dynamic> {
        return untyped __js__("this.$element");
    }
}