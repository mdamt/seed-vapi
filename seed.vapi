/* seed.vapi generated by vapigen, do not modify. */

namespace Seed {
	[CCode (cheader_filename = "seed.h")]
	[Compact]
	public class Class {
	}
	[CCode (cheader_filename = "seed.h", ref_function = "seed_context_ref", unref_function = "seed_context_unref")]
	[Compact]
	public class Context {
		public static void collect (Seed.GlobalContext ctx);
		public static unowned Seed.GlobalContext create (Seed.ContextGroup group, Seed.Class global_class);
		public unowned Seed.Object get_global_object ();
	}
	[CCode (cheader_filename = "seed.h")]
	[Compact]
	public class ContextGroup {
	}
	[CCode (cheader_filename = "seed.h", free_function = "seed_engine_destroy")]
	[Compact]
	public class Engine {
		public weak Seed.GlobalContext context;
		public weak Seed.Value global;
		public weak Seed.ContextGroup group;
		public weak string search_path;
		public unowned Seed.Value expose_gobject (string js_name, GLib.Object object, string gir_namespace, Seed.Exception exception);
		public unowned Seed.Value expose_namespace (string namespace_name, Seed.Exception exception);
		public unowned string get_search_path ();
		public void set_search_path (string path);
	}
	[CCode (cheader_filename = "seed.h")]
	[Compact]
	public class Exception {
		public static unowned string get_file (Seed.Context ctx, Seed.Exception exception);
		public static uint get_line (Seed.Context ctx, Seed.Exception exception);
		public static unowned string get_message (Seed.Context ctx, Seed.Exception exception);
		public static unowned string get_name (Seed.Context ctx, Seed.Exception exception);
		public static unowned string to_string (Seed.Context ctx, Seed.Exception exception);
	}
	[CCode (cheader_filename = "seed.h")]
	[Compact]
	public class GlobalContext {
	}
	[CCode (cheader_filename = "seed.h")]
	[Compact]
	public class Object {
		public static unowned Seed.Value call (Seed.Context ctx, Seed.Object object, Seed.Object this_object, size_t argument_count, Seed.Value[] arguments, Seed.Exception exception);
		public static unowned string copy_property_names (Seed.Context ctx, Seed.Object object);
		public void* get_private ();
		public static unowned Seed.Value get_property (Seed.Context ctx, Seed.Object object, string name);
		public static unowned Seed.Value get_property_at_index (Seed.Context ctx, Seed.Object object, int index, Seed.Exception exception);
		public static unowned Seed.Object get_prototype (Seed.Context ctx, Seed.Object obj);
		public static bool is_of_class (Seed.Context ctx, Seed.Object obj, Seed.Class klass);
		public void set_private (void* value);
		public static bool set_property (Seed.Context ctx, Seed.Object object, string name, Seed.Value value);
		public static void set_property_at_index (Seed.Context ctx, Seed.Object object, int index, Seed.Value value, Seed.Exception exception);
	}
	[CCode (cheader_filename = "seed.h", free_function = "seed_script_destroy")]
	[Compact]
	public class Script {
		public unowned Seed.Exception exception ();
		[CCode (has_construct_function = false)]
		public Script.from_file (Seed.Context ctx, string file);
	}
	[CCode (cheader_filename = "seed.h", ref_function = "seed_string_ref", unref_function = "seed_string_unref")]
	[Compact]
	public class String {
		public size_t get_maximum_size ();
		public bool is_equal (Seed.String b);
		public bool is_equal_utf8 (string b);
		public size_t to_utf8_buffer (string buffer, size_t buffer_size);
	}
	[CCode (cheader_filename = "seed.h")]
	[Compact]
	public class Value {
		public static unowned Seed.Value from_binary_string (Seed.Context ctx, string[] bytes, Seed.Exception exception);
		public static unowned Seed.Value from_boolean (Seed.Context ctx, bool val, Seed.Exception exception);
		public static unowned Seed.Value from_char (Seed.Context ctx, char val, Seed.Exception exception);
		public static unowned Seed.Value from_double (Seed.Context ctx, double val, Seed.Exception exception);
		public static unowned Seed.Value from_filename (Seed.Context ctx, Seed.Value val, Seed.Value exception);
		public static unowned Seed.Value from_float (Seed.Context ctx, float val, Seed.Exception exception);
		public static unowned Seed.Value from_gi_argument (Seed.Context ctx, GI.Argument arg, GI.TypeInfo type_info, Seed.Exception exception);
		public static unowned Seed.Value from_gvalue (Seed.Context ctx, GLib.Value gval, Seed.Exception exception);
		public static unowned Seed.Value from_int (Seed.Context ctx, int val, Seed.Exception exception);
		public static unowned Seed.Value from_int64 (Seed.Context ctx, int64 val, Seed.Exception exception);
		public static unowned Seed.Value from_long (Seed.Context ctx, long val, Seed.Exception exception);
		public static unowned Seed.Value from_object (Seed.Context ctx, GLib.Object val, Seed.Exception exception);
		public static unowned Seed.Value from_string (Seed.Context ctx, string val, Seed.Exception exception);
		public static unowned Seed.Value from_uchar (Seed.Context ctx, uchar val, Seed.Exception exception);
		public static unowned Seed.Value from_uint (Seed.Context ctx, uint val, Seed.Exception exception);
		public static unowned Seed.Value from_uint64 (Seed.Context ctx, uint64 val, Seed.Exception exception);
		public static unowned Seed.Value from_ulong (Seed.Context ctx, ulong val, Seed.Exception exception);
		public static bool is_function (Seed.Context ctx, Seed.Object value);
		public static bool is_null (Seed.Context ctx, Seed.Value value);
		public static bool is_number (Seed.Context ctx, Seed.Value value);
		public static bool is_object (Seed.Context ctx, Seed.Value value);
		public static bool is_object_of_class (Seed.Context ctx, Seed.Value value, Seed.Class klass);
		public static bool is_string (Seed.Context ctx, Seed.Value value);
		public static bool is_undefined (Seed.Context ctx, Seed.Value value);
		public static void protect (Seed.Context ctx, Seed.Value value);
		public static bool to_boolean (Seed.Context ctx, Seed.Value val, Seed.Exception exception);
		public static char to_char (Seed.Context ctx, Seed.Value val, Seed.Exception exception);
		public static double to_double (Seed.Context ctx, Seed.Value val, Seed.Exception exception);
		public static unowned string to_filename (Seed.Context ctx, Seed.Value val, Seed.Value exception);
		public static float to_float (Seed.Context ctx, Seed.Value val, Seed.Exception exception);
		public static bool to_format (Seed.Context ctx, string format, Seed.Value values, Seed.Value exception);
		public static bool to_gi_argument (Seed.Context ctx, Seed.Value value, GI.TypeInfo type_info, GI.Argument arg, Seed.Value exception);
		public static bool to_gvalue (Seed.Context ctx, Seed.Value val, GLib.Type type, GLib.Value gval, Seed.Exception exception);
		public static int to_int (Seed.Context ctx, Seed.Value val, Seed.Exception exception);
		public static int64 to_int64 (Seed.Context ctx, Seed.Value val, Seed.Exception exception);
		public static long to_long (Seed.Context ctx, Seed.Value val, Seed.Exception exception);
		public static unowned GLib.Object to_object (Seed.Context ctx, Seed.Value val, Seed.Exception exception);
		public static unowned string to_string (Seed.Context ctx, Seed.Value val, Seed.Exception exception);
		public static uchar to_uchar (Seed.Context ctx, Seed.Value val, Seed.Exception exception);
		public static uint to_uint (Seed.Context ctx, Seed.Value val, Seed.Exception exception);
		public static uint64 to_uint64 (Seed.Context ctx, Seed.Value val, Seed.Exception exception);
		public static ulong to_ulong (Seed.Context ctx, Seed.Value val, Seed.Exception exception);
		public static void unprotect (Seed.Context ctx, Seed.Value value);
	}
	[CCode (cheader_filename = "seed.h")]
	[Compact]
	public class seed_class_definition {
		public Seed.ClassAttributes attributes;
		public weak Seed.ObjectCallAsConstructorCallback call_as_constructor;
		public weak Seed.ObjectCallAsFunctionCallback call_as_function;
		public weak string class_name;
		public weak Seed.ObjectConvertToTypeCallback convert_to_type;
		public weak Seed.ObjectDeletePropertyCallback delete_property;
		public weak Seed.ObjectFinalizeCallback finalize;
		public weak Seed.ObjectGetPropertyCallback get_property;
		public weak Seed.ObjectGetPropertyNamesCallback get_property_names;
		public weak Seed.ObjectHasInstanceCallback has_instance;
		public weak Seed.ObjectHasPropertyCallback has_property;
		public weak Seed.ObjectInitializeCallback initialize;
		public weak Seed.Class parent_class;
		public weak Seed.ObjectSetPropertyCallback set_property;
		public weak Seed.seed_static_function static_functions;
		public weak Seed.seed_static_value static_values;
		public int version;
	}
	[CCode (cheader_filename = "seed.h")]
	[Compact]
	public class seed_static_function {
		public Seed.PropertyAttributes attributes;
		public weak Seed.ObjectCallAsFunctionCallback callback;
		public weak string name;
	}
	[CCode (cheader_filename = "seed.h")]
	[Compact]
	public class seed_static_value {
		public Seed.PropertyAttributes attributes;
		public weak Seed.ObjectGetPropertyCallback get_property;
		public weak string name;
		public weak Seed.ObjectSetPropertyCallback set_property;
	}
	[CCode (cheader_filename = "seed.h", cprefix = "SEED_CLASS_ATTRIBUTE_", has_type_id = false)]
	public enum ClassAttributes {
		NONE,
		NO_SHARED_PROTOTYPE
	}
	[CCode (cheader_filename = "seed.h", cprefix = "SEED_PROPERTY_ATTRIBUTE_", has_type_id = false)]
	public enum PropertyAttributes {
		NONE,
		READ_ONLY,
		DONT_ENUM,
		DONT_DELETE
	}
	[CCode (cheader_filename = "seed.h", cprefix = "SEED_TYPE_", has_type_id = false)]
	public enum Type {
		UNDEFINED,
		NULL,
		BOOLEAN,
		NUMBER,
		STRING,
		OBJECT
	}
	[CCode (cheader_filename = "seed.h", has_target = false)]
	public delegate unowned Seed.Value FunctionCallback (Seed.Context ctx, Seed.Object function, Seed.Object this_object, size_t argument_count, Seed.Value[] arguments, Seed.Exception exception);
	[CCode (cheader_filename = "seed.h", has_target = false)]
	public delegate unowned Seed.Object ModuleInitCallback (Seed.Engine eng);
	[CCode (cheader_filename = "seed.h", has_target = false)]
	public delegate unowned Seed.Value ObjectCallAsConstructorCallback (Seed.Context ctx, Seed.Object constructor, size_t argument_count, Seed.Value[] arguments, Seed.Exception exception);
	[CCode (cheader_filename = "seed.h", has_target = false)]
	public delegate unowned Seed.Value ObjectCallAsFunctionCallback (Seed.Context ctx, Seed.Object function, Seed.Object this_object, size_t argument_count, Seed.Value[] arguments, Seed.Exception exception);
	[CCode (cheader_filename = "seed.h", has_target = false)]
	public delegate unowned Seed.Value ObjectConvertToTypeCallback (Seed.Context ctx, Seed.Object object, Seed.Type type, Seed.Exception exception);
	[CCode (cheader_filename = "seed.h", has_target = false)]
	public delegate bool ObjectDeletePropertyCallback (Seed.Context ctx, Seed.Object object, Seed.String property_name, Seed.Exception e);
	[CCode (cheader_filename = "seed.h", has_target = false)]
	public delegate void ObjectFinalizeCallback (Seed.Object object);
	[CCode (cheader_filename = "seed.h", has_target = false)]
	public delegate unowned Seed.Value ObjectGetPropertyCallback (Seed.Context ctx, Seed.Object object, Seed.String property_name, Seed.Exception e);
	[CCode (cheader_filename = "seed.h", has_target = false)]
	public delegate void ObjectGetPropertyNamesCallback ();
	[CCode (cheader_filename = "seed.h", has_target = false)]
	public delegate bool ObjectHasInstanceCallback (Seed.Context ctx, Seed.Object constructor, Seed.Object instance_p, Seed.Exception exception);
	[CCode (cheader_filename = "seed.h", has_target = false)]
	public delegate bool ObjectHasPropertyCallback (Seed.Context ctx, Seed.Object object, Seed.String str);
	[CCode (cheader_filename = "seed.h", has_target = false)]
	public delegate void ObjectInitializeCallback (Seed.Context ctx, Seed.Object object);
	[CCode (cheader_filename = "seed.h", has_target = false)]
	public delegate bool ObjectSetPropertyCallback (Seed.Context ctx, Seed.Object object, Seed.String property_name, Seed.Value value, Seed.Exception e);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Object closure_get_callable (GLib.Closure c);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Value closure_invoke (GLib.Closure closure, Seed.Value args, uint argc, Seed.Exception exception);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Value closure_invoke_with_context (Seed.Context ctx, GLib.Closure closure, Seed.Value args, uint argc, Seed.Exception exception);
	[CCode (cheader_filename = "seed.h")]
	public static unowned GLib.Closure closure_new (Seed.Context ctx, Seed.Object function, string description);
	[CCode (cheader_filename = "seed.h")]
	public static void closure_warn_exception (GLib.Closure c, Seed.Context ctx, Seed.Exception exception);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Class create_class (Seed.seed_class_definition def);
	[CCode (cheader_filename = "seed.h")]
	public static void create_function (Seed.Context ctx, string name, Seed.FunctionCallback func, Seed.Object obj);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Value evaluate (Seed.Context ctx, Seed.Script s, Seed.Object this_object);
	[CCode (cheader_filename = "seed.h")]
	public static unowned GLib.OptionGroup get_option_group ();
	[CCode (cheader_filename = "seed.h")]
	public static void importer_add_global (Seed.Context ctx, string name);
	[CCode (cheader_filename = "seed.h")]
	public static void importer_set_search_path (Seed.Context ctx, string search_path);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Engine init (int argc, string argv);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Engine init_constrained (int argc, string argv);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Engine init_constrained_with_context_and_group (int argc, string argv, Seed.GlobalContext context, Seed.ContextGroup group);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Engine init_with_context (int argc, string argv, Seed.GlobalContext context);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Engine init_with_context_and_group (int argc, string argv, Seed.GlobalContext context, Seed.ContextGroup group);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Engine init_with_context_group (int argc, string argv, Seed.ContextGroup group);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Object make_array (Seed.Context ctx, Seed.Value elements, size_t num_elements, Seed.Exception exception);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Object make_constructor (Seed.Context ctx, Seed.Class klass, Seed.ObjectCallAsConstructorCallback constructor);
	[CCode (cheader_filename = "seed.h")]
	public static void make_exception (Seed.Context ctx, Seed.Exception exception, string name, string message);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Object make_function (Seed.Context ctx, Seed.FunctionCallback func, string name);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Value make_null (Seed.Context ctx);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Object make_object (Seed.Context ctx, Seed.Class klass, void* private_object);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Value make_pointer (Seed.Context ctx, void* pointer);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Script make_script (Seed.Context ctx, string js, string source_url, int line_number);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Value make_undefined (Seed.Context ctx);
	[CCode (cheader_filename = "seed.h")]
	public static void* pointer_get_pointer (Seed.Context ctx, Seed.Value pointer);
	[CCode (cheader_filename = "seed.h")]
	public static void prepare_global_context (Seed.Context ctx);
	[CCode (cheader_filename = "seed.h")]
	public static void signal_connect (Seed.Context ctx, GLib.Object object, string @signal, string script);
	[CCode (cheader_filename = "seed.h")]
	public static void signal_connect_value (Seed.Context ctx, GLib.Object object, string @signal, Seed.Value function);
	[CCode (cheader_filename = "seed.h")]
	public static unowned Seed.Value simple_evaluate (Seed.Context ctx, string source, Seed.Exception exception);
}
