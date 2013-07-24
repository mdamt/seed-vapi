<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Seed">
		<function name="closure_get_callable" symbol="seed_closure_get_callable">
			<return-type type="SeedObject"/>
			<parameters>
				<parameter name="c" type="GClosure*"/>
			</parameters>
		</function>
		<function name="closure_invoke" symbol="seed_closure_invoke">
			<return-type type="SeedValue"/>
			<parameters>
				<parameter name="closure" type="GClosure*"/>
				<parameter name="args" type="SeedValue*"/>
				<parameter name="argc" type="guint"/>
				<parameter name="exception" type="SeedException*"/>
			</parameters>
		</function>
		<function name="closure_invoke_with_context" symbol="seed_closure_invoke_with_context">
			<return-type type="SeedValue"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="closure" type="GClosure*"/>
				<parameter name="args" type="SeedValue*"/>
				<parameter name="argc" type="guint"/>
				<parameter name="exception" type="SeedException*"/>
			</parameters>
		</function>
		<function name="closure_new" symbol="seed_closure_new">
			<return-type type="GClosure*"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="function" type="SeedObject"/>
				<parameter name="user_data" type="SeedObject"/>
				<parameter name="description" type="gchar*"/>
			</parameters>
		</function>
		<function name="closure_warn_exception" symbol="seed_closure_warn_exception">
			<return-type type="void"/>
			<parameters>
				<parameter name="c" type="GClosure*"/>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="exception" type="SeedException"/>
			</parameters>
		</function>
		<function name="create_class" symbol="seed_create_class">
			<return-type type="SeedClass"/>
			<parameters>
				<parameter name="def" type="seed_class_definition*"/>
			</parameters>
		</function>
		<function name="create_function" symbol="seed_create_function">
			<return-type type="void"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="name" type="gchar*"/>
				<parameter name="func" type="SeedFunctionCallback"/>
				<parameter name="obj" type="SeedObject"/>
			</parameters>
		</function>
		<function name="evaluate" symbol="seed_evaluate">
			<return-type type="SeedValue"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="s" type="SeedScript*"/>
				<parameter name="this_object" type="SeedObject"/>
			</parameters>
		</function>
		<function name="get_option_group" symbol="seed_get_option_group">
			<return-type type="GOptionGroup*"/>
		</function>
		<function name="importer_add_global" symbol="seed_importer_add_global">
			<return-type type="void"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="name" type="gchar*"/>
			</parameters>
		</function>
		<function name="importer_set_search_path" symbol="seed_importer_set_search_path">
			<return-type type="void"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="search_path" type="gchar**"/>
			</parameters>
		</function>
		<function name="init" symbol="seed_init">
			<return-type type="SeedEngine*"/>
			<parameters>
				<parameter name="argc" type="gint*"/>
				<parameter name="argv" type="gchar***"/>
			</parameters>
		</function>
		<function name="init_constrained" symbol="seed_init_constrained">
			<return-type type="SeedEngine*"/>
			<parameters>
				<parameter name="argc" type="gint*"/>
				<parameter name="argv" type="gchar***"/>
			</parameters>
		</function>
		<function name="init_constrained_with_context_and_group" symbol="seed_init_constrained_with_context_and_group">
			<return-type type="SeedEngine*"/>
			<parameters>
				<parameter name="argc" type="gint*"/>
				<parameter name="argv" type="gchar***"/>
				<parameter name="context" type="SeedGlobalContext"/>
				<parameter name="group" type="SeedContextGroup"/>
			</parameters>
		</function>
		<function name="init_with_context" symbol="seed_init_with_context">
			<return-type type="SeedEngine*"/>
			<parameters>
				<parameter name="argc" type="gint*"/>
				<parameter name="argv" type="gchar***"/>
				<parameter name="context" type="SeedGlobalContext"/>
			</parameters>
		</function>
		<function name="init_with_context_and_group" symbol="seed_init_with_context_and_group">
			<return-type type="SeedEngine*"/>
			<parameters>
				<parameter name="argc" type="gint*"/>
				<parameter name="argv" type="gchar***"/>
				<parameter name="context" type="SeedGlobalContext"/>
				<parameter name="group" type="SeedContextGroup"/>
			</parameters>
		</function>
		<function name="init_with_context_group" symbol="seed_init_with_context_group">
			<return-type type="SeedEngine*"/>
			<parameters>
				<parameter name="argc" type="gint*"/>
				<parameter name="argv" type="gchar***"/>
				<parameter name="group" type="SeedContextGroup"/>
			</parameters>
		</function>
		<function name="make_array" symbol="seed_make_array">
			<return-type type="SeedObject"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="elements" type="SeedValue"/>
				<parameter name="num_elements" type="gsize"/>
				<parameter name="exception" type="SeedException*"/>
			</parameters>
		</function>
		<function name="make_constructor" symbol="seed_make_constructor">
			<return-type type="SeedObject"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="klass" type="SeedClass"/>
				<parameter name="constructor" type="SeedObjectCallAsConstructorCallback"/>
			</parameters>
		</function>
		<function name="make_exception" symbol="seed_make_exception">
			<return-type type="void"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="exception" type="SeedException"/>
				<parameter name="name" type="gchar*"/>
				<parameter name="message" type="gchar*"/>
			</parameters>
		</function>
		<function name="make_function" symbol="seed_make_function">
			<return-type type="SeedObject"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="func" type="SeedFunctionCallback"/>
				<parameter name="name" type="gchar*"/>
			</parameters>
		</function>
		<function name="make_null" symbol="seed_make_null">
			<return-type type="SeedValue"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
			</parameters>
		</function>
		<function name="make_object" symbol="seed_make_object">
			<return-type type="SeedObject"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="klass" type="SeedClass"/>
				<parameter name="private_object" type="gpointer"/>
			</parameters>
		</function>
		<function name="make_pointer" symbol="seed_make_pointer">
			<return-type type="SeedValue"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="pointer" type="gpointer"/>
			</parameters>
		</function>
		<function name="make_script" symbol="seed_make_script">
			<return-type type="SeedScript*"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="js" type="gchar*"/>
				<parameter name="source_url" type="gchar*"/>
				<parameter name="line_number" type="gint"/>
			</parameters>
		</function>
		<function name="make_undefined" symbol="seed_make_undefined">
			<return-type type="SeedValue"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
			</parameters>
		</function>
		<function name="pointer_get_pointer" symbol="seed_pointer_get_pointer">
			<return-type type="gpointer"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="pointer" type="SeedValue"/>
			</parameters>
		</function>
		<function name="prepare_global_context" symbol="seed_prepare_global_context">
			<return-type type="void"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
			</parameters>
		</function>
		<function name="signal_connect" symbol="seed_signal_connect">
			<return-type type="void"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="object" type="GObject*"/>
				<parameter name="signal" type="gchar*"/>
				<parameter name="script" type="gchar*"/>
			</parameters>
		</function>
		<function name="signal_connect_value" symbol="seed_signal_connect_value">
			<return-type type="void"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="object" type="GObject*"/>
				<parameter name="signal" type="gchar*"/>
				<parameter name="function" type="SeedValue"/>
				<parameter name="user_data" type="SeedValue"/>
			</parameters>
		</function>
		<function name="simple_evaluate" symbol="seed_simple_evaluate">
			<return-type type="SeedValue"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="source" type="gchar*"/>
				<parameter name="exception" type="SeedException*"/>
			</parameters>
		</function>
		<callback name="SeedFunctionCallback">
			<return-type type="SeedValue"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="function" type="SeedObject"/>
				<parameter name="this_object" type="SeedObject"/>
				<parameter name="argument_count" type="gsize"/>
				<parameter name="arguments" type="SeedValue[]"/>
				<parameter name="exception" type="SeedException*"/>
			</parameters>
		</callback>
		<callback name="SeedModuleInitCallback">
			<return-type type="SeedObject"/>
			<parameters>
				<parameter name="eng" type="SeedEngine*"/>
			</parameters>
		</callback>
		<callback name="SeedObjectCallAsConstructorCallback">
			<return-type type="SeedValue"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="constructor" type="SeedObject"/>
				<parameter name="argument_count" type="gsize"/>
				<parameter name="arguments" type="SeedValue[]"/>
				<parameter name="exception" type="SeedException*"/>
			</parameters>
		</callback>
		<callback name="SeedObjectCallAsFunctionCallback">
			<return-type type="SeedValue"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="function" type="SeedObject"/>
				<parameter name="this_object" type="SeedObject"/>
				<parameter name="argument_count" type="gsize"/>
				<parameter name="arguments" type="SeedValue[]"/>
				<parameter name="exception" type="SeedException*"/>
			</parameters>
		</callback>
		<callback name="SeedObjectConvertToTypeCallback">
			<return-type type="SeedValue"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="object" type="SeedObject"/>
				<parameter name="type" type="SeedType"/>
				<parameter name="exception" type="SeedException*"/>
			</parameters>
		</callback>
		<callback name="SeedObjectDeletePropertyCallback">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="object" type="SeedObject"/>
				<parameter name="property_name" type="SeedString"/>
				<parameter name="e" type="SeedException*"/>
			</parameters>
		</callback>
		<callback name="SeedObjectFinalizeCallback">
			<return-type type="void"/>
			<parameters>
				<parameter name="object" type="SeedObject"/>
			</parameters>
		</callback>
		<callback name="SeedObjectGetPropertyCallback">
			<return-type type="SeedValue"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="object" type="SeedObject"/>
				<parameter name="property_name" type="SeedString"/>
				<parameter name="e" type="SeedException*"/>
			</parameters>
		</callback>
		<callback name="SeedObjectGetPropertyNamesCallback">
			<return-type type="void"/>
		</callback>
		<callback name="SeedObjectHasInstanceCallback">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="constructor" type="SeedObject"/>
				<parameter name="instance_p" type="SeedObject"/>
				<parameter name="exception" type="SeedException*"/>
			</parameters>
		</callback>
		<callback name="SeedObjectHasPropertyCallback">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="object" type="SeedObject"/>
				<parameter name="string" type="SeedString"/>
			</parameters>
		</callback>
		<callback name="SeedObjectInitializeCallback">
			<return-type type="void"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="object" type="SeedObject"/>
			</parameters>
		</callback>
		<callback name="SeedObjectSetPropertyCallback">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="ctx" type="SeedContext"/>
				<parameter name="object" type="SeedObject"/>
				<parameter name="property_name" type="SeedString"/>
				<parameter name="value" type="SeedValue"/>
				<parameter name="e" type="SeedException*"/>
			</parameters>
		</callback>
		<struct name="SeedClass">
		</struct>
		<struct name="SeedContext">
			<method name="collect" symbol="seed_context_collect">
				<return-type type="void"/>
				<parameters>
					<parameter name="ctx" type="SeedGlobalContext"/>
				</parameters>
			</method>
			<method name="create" symbol="seed_context_create">
				<return-type type="SeedGlobalContext"/>
				<parameters>
					<parameter name="group" type="SeedContextGroup"/>
					<parameter name="global_class" type="SeedClass"/>
				</parameters>
			</method>
			<method name="get_global_object" symbol="seed_context_get_global_object">
				<return-type type="SeedObject"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
				</parameters>
			</method>
			<method name="ref" symbol="seed_context_ref">
				<return-type type="SeedGlobalContext"/>
				<parameters>
					<parameter name="ctx" type="SeedGlobalContext"/>
				</parameters>
			</method>
			<method name="unref" symbol="seed_context_unref">
				<return-type type="void"/>
				<parameters>
					<parameter name="ctx" type="SeedGlobalContext"/>
				</parameters>
			</method>
		</struct>
		<struct name="SeedContextGroup">
		</struct>
		<struct name="SeedEngine">
			<method name="destroy" symbol="seed_engine_destroy">
				<return-type type="void"/>
				<parameters>
					<parameter name="eng" type="SeedEngine*"/>
				</parameters>
			</method>
			<method name="expose_gobject" symbol="seed_engine_expose_gobject">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="engine" type="SeedEngine*"/>
					<parameter name="js_name" type="gchar*"/>
					<parameter name="object" type="GObject*"/>
					<parameter name="gir_namespace" type="gchar*"/>
					<parameter name="exception" type="SeedException"/>
				</parameters>
			</method>
			<method name="expose_namespace" symbol="seed_engine_expose_namespace">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="engine" type="SeedEngine*"/>
					<parameter name="namespace_name" type="gchar*"/>
					<parameter name="exception" type="SeedException"/>
				</parameters>
			</method>
			<method name="get_search_path" symbol="seed_engine_get_search_path">
				<return-type type="gchar**"/>
				<parameters>
					<parameter name="eng" type="SeedEngine*"/>
				</parameters>
			</method>
			<method name="set_search_path" symbol="seed_engine_set_search_path">
				<return-type type="void"/>
				<parameters>
					<parameter name="eng" type="SeedEngine*"/>
					<parameter name="path" type="gchar*"/>
				</parameters>
			</method>
			<field name="context" type="SeedGlobalContext"/>
			<field name="global" type="SeedValue"/>
			<field name="search_path" type="gchar**"/>
			<field name="group" type="SeedContextGroup"/>
		</struct>
		<struct name="SeedException">
			<method name="get_file" symbol="seed_exception_get_file">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="exception" type="SeedException"/>
				</parameters>
			</method>
			<method name="get_line" symbol="seed_exception_get_line">
				<return-type type="guint"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="exception" type="SeedException"/>
				</parameters>
			</method>
			<method name="get_message" symbol="seed_exception_get_message">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="exception" type="SeedException"/>
				</parameters>
			</method>
			<method name="get_name" symbol="seed_exception_get_name">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="exception" type="SeedException"/>
				</parameters>
			</method>
			<method name="to_string" symbol="seed_exception_to_string">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="exception" type="SeedException"/>
				</parameters>
			</method>
		</struct>
		<struct name="SeedGlobalContext">
		</struct>
		<struct name="SeedObject">
			<method name="call" symbol="seed_object_call">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="object" type="SeedObject"/>
					<parameter name="this_object" type="SeedObject"/>
					<parameter name="argument_count" type="gsize"/>
					<parameter name="arguments" type="SeedValue[]"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="copy_property_names" symbol="seed_object_copy_property_names">
				<return-type type="gchar**"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="object" type="SeedObject"/>
				</parameters>
			</method>
			<method name="get_private" symbol="seed_object_get_private">
				<return-type type="gpointer"/>
				<parameters>
					<parameter name="object" type="SeedObject"/>
				</parameters>
			</method>
			<method name="get_property" symbol="seed_object_get_property">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="object" type="SeedObject"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_property_at_index" symbol="seed_object_get_property_at_index">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="object" type="SeedObject"/>
					<parameter name="index" type="gint"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="get_prototype" symbol="seed_object_get_prototype">
				<return-type type="SeedObject"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="obj" type="SeedObject"/>
				</parameters>
			</method>
			<method name="is_of_class" symbol="seed_object_is_of_class">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="obj" type="SeedObject"/>
					<parameter name="klass" type="SeedClass"/>
				</parameters>
			</method>
			<method name="set_private" symbol="seed_object_set_private">
				<return-type type="void"/>
				<parameters>
					<parameter name="object" type="SeedObject"/>
					<parameter name="value" type="gpointer"/>
				</parameters>
			</method>
			<method name="set_property" symbol="seed_object_set_property">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="object" type="SeedObject"/>
					<parameter name="name" type="gchar*"/>
					<parameter name="value" type="SeedValue"/>
				</parameters>
			</method>
			<method name="set_property_at_index" symbol="seed_object_set_property_at_index">
				<return-type type="void"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="object" type="SeedObject"/>
					<parameter name="index" type="gint"/>
					<parameter name="value" type="SeedValue"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
		</struct>
		<struct name="SeedScript">
			<method name="destroy" symbol="seed_script_destroy">
				<return-type type="void"/>
				<parameters>
					<parameter name="s" type="SeedScript*"/>
				</parameters>
			</method>
			<method name="exception" symbol="seed_script_exception">
				<return-type type="SeedException"/>
				<parameters>
					<parameter name="s" type="SeedScript*"/>
				</parameters>
			</method>
			<method name="new_from_file" symbol="seed_script_new_from_file">
				<return-type type="SeedScript*"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="file" type="gchar*"/>
				</parameters>
			</method>
		</struct>
		<struct name="SeedString">
			<method name="get_maximum_size" symbol="seed_string_get_maximum_size">
				<return-type type="gsize"/>
				<parameters>
					<parameter name="string" type="SeedString"/>
				</parameters>
			</method>
			<method name="is_equal" symbol="seed_string_is_equal">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="a" type="SeedString"/>
					<parameter name="b" type="SeedString"/>
				</parameters>
			</method>
			<method name="is_equal_utf8" symbol="seed_string_is_equal_utf8">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="a" type="SeedString"/>
					<parameter name="b" type="gchar*"/>
				</parameters>
			</method>
			<method name="ref" symbol="seed_string_ref">
				<return-type type="SeedString"/>
				<parameters>
					<parameter name="string" type="SeedString"/>
				</parameters>
			</method>
			<method name="to_utf8_buffer" symbol="seed_string_to_utf8_buffer">
				<return-type type="gsize"/>
				<parameters>
					<parameter name="string" type="SeedString"/>
					<parameter name="buffer" type="gchar*"/>
					<parameter name="buffer_size" type="size_t"/>
				</parameters>
			</method>
			<method name="unref" symbol="seed_string_unref">
				<return-type type="void"/>
				<parameters>
					<parameter name="string" type="SeedString"/>
				</parameters>
			</method>
		</struct>
		<struct name="SeedValue">
			<method name="from_binary_string" symbol="seed_value_from_binary_string">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="bytes" type="gchar*"/>
					<parameter name="n_bytes" type="gint"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="from_boolean" symbol="seed_value_from_boolean">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="gboolean"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="from_char" symbol="seed_value_from_char">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="gchar"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="from_double" symbol="seed_value_from_double">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="gdouble"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="from_filename" symbol="seed_value_from_filename">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="exception" type="SeedValue*"/>
				</parameters>
			</method>
			<method name="from_float" symbol="seed_value_from_float">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="gfloat"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="from_gi_argument" symbol="seed_value_from_gi_argument">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="arg" type="GIArgument*"/>
					<parameter name="type_info" type="GITypeInfo*"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="from_gvalue" symbol="seed_value_from_gvalue">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="gval" type="GValue*"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="from_int" symbol="seed_value_from_int">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="gint"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="from_int64" symbol="seed_value_from_int64">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="gint64"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="from_long" symbol="seed_value_from_long">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="glong"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="from_object" symbol="seed_value_from_object">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="GObject*"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="from_string" symbol="seed_value_from_string">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="gchar*"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="from_uchar" symbol="seed_value_from_uchar">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="guchar"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="from_uint" symbol="seed_value_from_uint">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="guint"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="from_uint64" symbol="seed_value_from_uint64">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="guint64"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="from_ulong" symbol="seed_value_from_ulong">
				<return-type type="SeedValue"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="gulong"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="is_function" symbol="seed_value_is_function">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="value" type="SeedObject"/>
				</parameters>
			</method>
			<method name="is_null" symbol="seed_value_is_null">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="value" type="SeedValue"/>
				</parameters>
			</method>
			<method name="is_number" symbol="seed_value_is_number">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="value" type="SeedValue"/>
				</parameters>
			</method>
			<method name="is_object" symbol="seed_value_is_object">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="value" type="SeedValue"/>
				</parameters>
			</method>
			<method name="is_object_of_class" symbol="seed_value_is_object_of_class">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="value" type="SeedValue"/>
					<parameter name="klass" type="SeedClass"/>
				</parameters>
			</method>
			<method name="is_string" symbol="seed_value_is_string">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="value" type="SeedValue"/>
				</parameters>
			</method>
			<method name="is_undefined" symbol="seed_value_is_undefined">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="value" type="SeedValue"/>
				</parameters>
			</method>
			<method name="protect" symbol="seed_value_protect">
				<return-type type="void"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="value" type="SeedValue"/>
				</parameters>
			</method>
			<method name="to_boolean" symbol="seed_value_to_boolean">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="to_char" symbol="seed_value_to_char">
				<return-type type="gchar"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="to_double" symbol="seed_value_to_double">
				<return-type type="gdouble"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="to_filename" symbol="seed_value_to_filename">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="exception" type="SeedValue*"/>
				</parameters>
			</method>
			<method name="to_float" symbol="seed_value_to_float">
				<return-type type="gfloat"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="to_format" symbol="seed_value_to_format">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="format" type="gchar*"/>
					<parameter name="values" type="SeedValue*"/>
					<parameter name="exception" type="SeedValue*"/>
				</parameters>
			</method>
			<method name="to_gi_argument" symbol="seed_value_to_gi_argument">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="value" type="SeedValue"/>
					<parameter name="type_info" type="GITypeInfo*"/>
					<parameter name="arg" type="GIArgument*"/>
					<parameter name="exception" type="SeedValue*"/>
				</parameters>
			</method>
			<method name="to_gvalue" symbol="seed_value_to_gvalue">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="type" type="GType"/>
					<parameter name="gval" type="GValue*"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="to_int" symbol="seed_value_to_int">
				<return-type type="gint"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="to_int64" symbol="seed_value_to_int64">
				<return-type type="gint64"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="to_long" symbol="seed_value_to_long">
				<return-type type="glong"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="to_object" symbol="seed_value_to_object">
				<return-type type="GObject*"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="to_string" symbol="seed_value_to_string">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="to_uchar" symbol="seed_value_to_uchar">
				<return-type type="guchar"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="to_uint" symbol="seed_value_to_uint">
				<return-type type="guint"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="to_uint64" symbol="seed_value_to_uint64">
				<return-type type="guint64"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="to_ulong" symbol="seed_value_to_ulong">
				<return-type type="gulong"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="val" type="SeedValue"/>
					<parameter name="exception" type="SeedException*"/>
				</parameters>
			</method>
			<method name="unprotect" symbol="seed_value_unprotect">
				<return-type type="void"/>
				<parameters>
					<parameter name="ctx" type="SeedContext"/>
					<parameter name="value" type="SeedValue"/>
				</parameters>
			</method>
		</struct>
		<struct name="seed_class_definition">
			<field name="version" type="int"/>
			<field name="attributes" type="SeedClassAttributes"/>
			<field name="class_name" type="gchar*"/>
			<field name="parent_class" type="SeedClass"/>
			<field name="static_values" type="seed_static_value*"/>
			<field name="static_functions" type="seed_static_function*"/>
			<field name="initialize" type="SeedObjectInitializeCallback"/>
			<field name="finalize" type="SeedObjectFinalizeCallback"/>
			<field name="has_property" type="SeedObjectHasPropertyCallback"/>
			<field name="get_property" type="SeedObjectGetPropertyCallback"/>
			<field name="set_property" type="SeedObjectSetPropertyCallback"/>
			<field name="delete_property" type="SeedObjectDeletePropertyCallback"/>
			<field name="get_property_names" type="SeedObjectGetPropertyNamesCallback"/>
			<field name="call_as_function" type="SeedObjectCallAsFunctionCallback"/>
			<field name="call_as_constructor" type="SeedObjectCallAsConstructorCallback"/>
			<field name="has_instance" type="SeedObjectHasInstanceCallback"/>
			<field name="convert_to_type" type="SeedObjectConvertToTypeCallback"/>
		</struct>
		<struct name="seed_static_function">
			<field name="name" type="gchar*"/>
			<field name="callback" type="SeedObjectCallAsFunctionCallback"/>
			<field name="attributes" type="SeedPropertyAttributes"/>
		</struct>
		<struct name="seed_static_value">
			<field name="name" type="gchar*"/>
			<field name="get_property" type="SeedObjectGetPropertyCallback"/>
			<field name="set_property" type="SeedObjectSetPropertyCallback"/>
			<field name="attributes" type="SeedPropertyAttributes"/>
		</struct>
		<enum name="SeedClassAttributes">
			<member name="SEED_CLASS_ATTRIBUTE_NONE" value="0"/>
			<member name="SEED_CLASS_ATTRIBUTE_NO_SHARED_PROTOTYPE" value="2"/>
		</enum>
		<enum name="SeedPropertyAttributes">
			<member name="SEED_PROPERTY_ATTRIBUTE_NONE" value="0"/>
			<member name="SEED_PROPERTY_ATTRIBUTE_READ_ONLY" value="2"/>
			<member name="SEED_PROPERTY_ATTRIBUTE_DONT_ENUM" value="4"/>
			<member name="SEED_PROPERTY_ATTRIBUTE_DONT_DELETE" value="8"/>
		</enum>
		<enum name="SeedType">
			<member name="SEED_TYPE_UNDEFINED" value="0"/>
			<member name="SEED_TYPE_NULL" value="1"/>
			<member name="SEED_TYPE_BOOLEAN" value="2"/>
			<member name="SEED_TYPE_NUMBER" value="3"/>
			<member name="SEED_TYPE_STRING" value="4"/>
			<member name="SEED_TYPE_OBJECT" value="5"/>
		</enum>
	</namespace>
</api>
