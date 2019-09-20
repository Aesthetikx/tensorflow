require "bundler/gem_tasks"
require "rake/testtask"

task default: :test
Rake::TestTask.new do |t|
  t.libs << "test"
  t.pattern = "test/**/*_test.rb"
  t.warning = false
end

task :generate_ops do
  require "tensorflow"

  # TODO pull these into project?
  path = "#{ENV["HOME"]}/forks/tensorflow"
  $:.push(path)
  require "tensorflow/core/framework/op_def_pb"

  buffer = TensorFlow::FFI.TF_GetAllOpList
  encoded = buffer[:data].read_bytes(buffer[:length])

  # based on ActiveSupport underscore
  def underscore(str)
    str.gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').gsub(/([a-z\d])([A-Z])/,'\1_\2').downcase
  end

  def arg_name(name)
    # start and stop choosen as they are used for some operations
    case name
    when "begin"
      "start"
    when "end"
      "stop"
    else
      name
    end
  end

  name_map = {
    "div" => "divide",
    "floor_div" => "floordiv",
    "floor_mod" => "floormod",
    "mul" => "multiply",
    "sub" => "subtract"
  }
  op_names = ["abs", "acos", "acosh", "add", "add_n", "argmax", "argmin", "argsort", "as_dtype", "as_string", "asin", "asinh", "assert_equal", "assert_greater", "assert_less", "assert_rank", "atan", "atan2", "atanh", "audio", "autograph", "batch_to_space", "bitcast", "bitwise", "boolean_mask", "broadcast_dynamic_shape", "broadcast_static_shape", "broadcast_to", "case", "cast", "clip_by_global_norm", "clip_by_norm", "clip_by_value", "compat", "complex", "concat", "cond", "config", "constant", "constant_initializer", "control_dependencies", "convert_to_tensor", "cos", "cosh", "cumsum", "custom_gradient", "data", "debugging", "device", "distribute", "divide", "dtypes", "dynamic_partition", "dynamic_stitch", "edit_distance", "einsum", "ensure_shape", "equal", "errors", "estimator", "executing_eagerly", "exp", "expand_dims", "experimental", "extract_volume_patches", "eye", "feature_column", "fill", "fingerprint", "floor", "foldl", "foldr", "function", "gather", "gather_nd", "get_logger", "get_static_value", "grad_pass_through", "gradients", "graph_util", "greater", "greater_equal", "group", "guarantee_const", "hessians", "histogram_fixed_width", "histogram_fixed_width_bins", "identity", "identity_n", "image", "import_graph_def", "init_scope", "initializers", "io", "is_tensor", "keras", "less", "less_equal", "linalg", "linspace", "lite", "load_library", "load_op_library", "logical_and", "logical_not", "logical_or", "lookup", "losses", "make_ndarray", "make_tensor_proto", "map_fn", "math", "matmul", "matrix_square_root", "maximum", "meshgrid", "metrics", "minimum", "multiply", "name_scope", "negative", "nest", "nn", "no_gradient", "no_op", "nondifferentiable_batch_function", "norm", "not_equal", "numpy_function", "one_hot", "ones", "ones_initializer", "ones_like", "optimizers", "pad", "parallel_stack", "pow", "print", "py_function", "quantization", "queue", "ragged", "random", "random_normal_initializer", "random_uniform_initializer", "range", "rank", "raw_ops", "realdiv", "recompute_grad", "reduce_all", "reduce_any", "reduce_logsumexp", "reduce_max", "reduce_mean", "reduce_min", "reduce_prod", "reduce_sum", "register_tensor_conversion_function", "required_space_to_batch_paddings", "reshape", "reverse", "reverse_sequence", "roll", "round", "saturate_cast", "saved_model", "scalar_mul", "scan", "scatter_nd", "searchsorted", "sequence_mask", "sets", "shape", "shape_n", "sigmoid", "sign", "signal", "sin", "sinh", "size", "slice", "sort", "space_to_batch", "space_to_batch_nd", "sparse", "split", "sqrt", "square", "squeeze", "stack", "stop_gradient", "strided_slice", "strings", "subtract", "summary", "switch_case", "sysconfig", "tan", "tanh", "tensor_scatter_nd_add", "tensor_scatter_nd_sub", "tensor_scatter_nd_update", "tensordot", "test", "tile", "timestamp", "tpu", "train", "transpose", "truediv", "truncatediv", "truncatemod", "tuple", "unique", "unique_with_counts", "unravel_index", "unstack", "variable_creator_scope", "vectorized_map", "version", "where", "while_loop", "xla", "zeros", "zeros_initializer", "zeros_like"] +
    ["matrix_set_diag", "floormod", "assign_add_variable_op", "assign_sub_variable_op", "assign_variable_op", "var_is_initialized_op", "read_variable_op", "var_handle_op"]

  defs = []
  Tensorflow::OpList.decode(encoded).op.sort_by(&:name).each do |op|
    input_names = op.input_arg.map { |v| arg_name(v.name) }
    options = op.attr.map { |v| arg_name(v.name) }.reject { |v| v[0] == v[0].upcase }

    if op.name[0] != "_" && op.name !~ /V\d/
      # TODO generate default values
      def_name = underscore(op.name)
      # if def_name =~ /v\d/ && def_name[-3] != "_"
      #   def_name = "#{def_name[0..-3]}_#{def_name[-2..-1]}"
      # end
      def_name = name_map[def_name] if name_map[def_name]
      def_options_str = options.map { |v| ", #{v}: nil" }.join
      execute_options_str = options.map { |v| ", #{v}: #{v}" }.join

      if op_names.include?(def_name)
        defs << %!    def #{def_name}(#{input_names.join(", ")}#{def_options_str})
      execute("#{op.name}", [#{input_names.join(", ")}]#{execute_options_str})
    end!
      end
    end
  end

  contents = %!# Generated by `rake generate_ops`
module TensorFlow
  module GeneratedOps
#{defs.join("\n\n")}
  end
end
!
  contents = contents.gsub("()", "").gsub("(, ", "(")
  # puts contents
  File.write("lib/tensorflow/generated_ops.rb", contents)
end

task :op_names do
  require "open-uri"
  require "nokogiri"

  def_names = []
  doc = Nokogiri::HTML(open("https://www.tensorflow.org/versions/r2.0/api_docs/python"))
  doc.css("a").each do |node|
    text = node.text.strip
    if text.start_with?("tf.") && text == text.downcase && text.count(".") == 1
      def_names << text.split(".").last
    end
  end
  p def_names
end
