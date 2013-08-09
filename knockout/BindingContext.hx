package knockout;

class BindingContext {

    public var parent(get_parent, null):Null<Dynamic>;
    public var parents(get_parents, null):Null<Array<Dynamic>>;
    public var root(get_root, null):Dynamic;
    public var data(get_data, null):Null<Dynamic>;
    public var index(get_index, null):Null<Int>;
    public var parentContext(get_parentContext, null):Null<BindingContext>;
    public var context(get_context, null):BindingContext;
    public var element(get_element, null):js.html.Node;

    private inline function get_parent():Null<Dynamic> untyped {
        return this["$parent"];
    }

    private inline function get_parents():Null<Dynamic> untyped {
        return this["$parents"];
    }

    private inline function get_root():Null<Dynamic> untyped {
        return this["$root"];
    }

    private inline function get_data():Null<Dynamic> untyped {
        return this["$data"];
    }

    private inline function get_index():Null<Dynamic> untyped {
        return this["$index"];
    }

    private inline function get_parentContext():Null<Dynamic> untyped {
        return this["$parentContext"];
    }

    private inline function get_context():Null<Dynamic> untyped {
        return this["$context"];
    }

    private inline function get_element():Null<Dynamic> untyped {
        return this["$element"];
    }
}