# Generated by `rake generate_ops`
module TensorFlow
  module GeneratedOps
    def abs(x)
      execute("Abs", [x])
    end

    def acos(x)
      execute("Acos", [x])
    end

    def acosh(x)
      execute("Acosh", [x])
    end

    def add(x, y)
      execute("Add", [x, y])
    end

    def add_n(inputs)
      execute("AddN", [inputs])
    end

    def approximate_equal(x, y)
      execute("ApproximateEqual", [x, y])
    end

    def as_string(input)
      execute("AsString", [input])
    end

    def asin(x)
      execute("Asin", [x])
    end

    def asinh(x)
      execute("Asinh", [x])
    end

    def atan(x)
      execute("Atan", [x])
    end

    def atan2(y, x)
      execute("Atan2", [y, x])
    end

    def atanh(x)
      execute("Atanh", [x])
    end

    def batch_mat_mul(x, y)
      execute("BatchMatMul", [x, y])
    end

    def batch_to_space(input, crops)
      execute("BatchToSpace", [input, crops])
    end

    def bessel_i0e(x)
      execute("BesselI0e", [x])
    end

    def bessel_i1e(x)
      execute("BesselI1e", [x])
    end

    def bitcast(input)
      execute("Bitcast", [input])
    end

    def bitwise_and(x, y)
      execute("BitwiseAnd", [x, y])
    end

    def bitwise_or(x, y)
      execute("BitwiseOr", [x, y])
    end

    def bitwise_xor(x, y)
      execute("BitwiseXor", [x, y])
    end

    def broadcast_to(input, shape)
      execute("BroadcastTo", [input, shape])
    end

    def case(branch_index, input)
      execute("Case", [branch_index, input])
    end

    def cast(x)
      execute("Cast", [x])
    end

    def ceil(x)
      execute("Ceil", [x])
    end

    def clip_by_value(t, clip_value_min, clip_value_max)
      execute("ClipByValue", [t, clip_value_min, clip_value_max])
    end

    def complex(real, imag)
      execute("Complex", [real, imag])
    end

    def complex_abs(x)
      execute("ComplexAbs", [x])
    end

    def concat(concat_dim, values)
      execute("Concat", [concat_dim, values])
    end

    def conjugate_transpose(x, perm)
      execute("ConjugateTranspose", [x, perm])
    end

    def cos(x)
      execute("Cos", [x])
    end

    def cosh(x)
      execute("Cosh", [x])
    end

    def cumprod(x, axis)
      execute("Cumprod", [x, axis])
    end

    def cumsum(x, axis)
      execute("Cumsum", [x, axis])
    end

    def data_format_dim_map(x)
      execute("DataFormatDimMap", [x])
    end

    def data_format_vec_permute(x)
      execute("DataFormatVecPermute", [x])
    end

    def deep_copy(x)
      execute("DeepCopy", [x])
    end

    def digamma(x)
      execute("Digamma", [x])
    end

    def divide(x, y)
      execute("Div", [x, y])
    end

    def div_no_nan(x, y)
      execute("DivNoNan", [x, y])
    end

    def dynamic_partition(data, partitions)
      execute("DynamicPartition", [data, partitions])
    end

    def dynamic_stitch(indices, data)
      execute("DynamicStitch", [indices, data])
    end

    def edit_distance(hypothesis_indices, hypothesis_values, hypothesis_shape, truth_indices, truth_values, truth_shape)
      execute("EditDistance", [hypothesis_indices, hypothesis_values, hypothesis_shape, truth_indices, truth_values, truth_shape])
    end

    def ensure_shape(input)
      execute("EnsureShape", [input])
    end

    def equal(x, y)
      execute("Equal", [x, y])
    end

    def erf(x)
      execute("Erf", [x])
    end

    def erfc(x)
      execute("Erfc", [x])
    end

    def exp(x)
      execute("Exp", [x])
    end

    def expand_dims(input, dim)
      execute("ExpandDims", [input, dim])
    end

    def expm1(x)
      execute("Expm1", [x])
    end

    def extract_volume_patches(input)
      execute("ExtractVolumePatches", [input])
    end

    def fill(dims, value)
      execute("Fill", [dims, value])
    end

    def fingerprint(data, method)
      execute("Fingerprint", [data, method])
    end

    def floor(x)
      execute("Floor", [x])
    end

    def floordiv(x, y)
      execute("FloorDiv", [x, y])
    end

    def floormod(x, y)
      execute("FloorMod", [x, y])
    end

    def fused_batch_norm(x, scale, offset, mean, variance)
      execute("FusedBatchNorm", [x, scale, offset, mean, variance])
    end

    def fused_batch_norm_v3(x, scale, offset, mean, variance)
      execute("FusedBatchNormV3", [x, scale, offset, mean, variance])
    end

    def gather(params, indices)
      execute("Gather", [params, indices])
    end

    def gather_nd(params, indices)
      execute("GatherNd", [params, indices])
    end

    def greater(x, y)
      execute("Greater", [x, y])
    end

    def greater_equal(x, y)
      execute("GreaterEqual", [x, y])
    end

    def guarantee_const(input)
      execute("GuaranteeConst", [input])
    end

    def histogram_fixed_width(values, value_range, nbins)
      execute("HistogramFixedWidth", [values, value_range, nbins])
    end

    def identity(input)
      execute("Identity", [input])
    end

    def identity_n(input)
      execute("IdentityN", [input])
    end

    def inplace_add(x, i, v)
      execute("InplaceAdd", [x, i, v])
    end

    def inplace_sub(x, i, v)
      execute("InplaceSub", [x, i, v])
    end

    def inplace_update(x, i, v)
      execute("InplaceUpdate", [x, i, v])
    end

    def inv(x)
      execute("Inv", [x])
    end

    def invert(x)
      execute("Invert", [x])
    end

    def invert_permutation(x)
      execute("InvertPermutation", [x])
    end

    def is_finite(x)
      execute("IsFinite", [x])
    end

    def is_inf(x)
      execute("IsInf", [x])
    end

    def is_nan(x)
      execute("IsNan", [x])
    end

    def left_shift(x, y)
      execute("LeftShift", [x, y])
    end

    def less(x, y)
      execute("Less", [x, y])
    end

    def less_equal(x, y)
      execute("LessEqual", [x, y])
    end

    def lgamma(x)
      execute("Lgamma", [x])
    end

    def list_diff(x, y)
      execute("ListDiff", [x, y])
    end

    def log(x)
      execute("Log", [x])
    end

    def log1p(x)
      execute("Log1p", [x])
    end

    def logical_and(x, y)
      execute("LogicalAnd", [x, y])
    end

    def logical_not(x)
      execute("LogicalNot", [x])
    end

    def logical_or(x, y)
      execute("LogicalOr", [x, y])
    end

    def matrix_square_root(input)
      execute("MatrixSquareRoot", [input])
    end

    def maximum(x, y)
      execute("Maximum", [x, y])
    end

    def minimum(x, y)
      execute("Minimum", [x, y])
    end

    def mod(x, y)
      execute("Mod", [x, y])
    end

    def multiply(x, y)
      execute("Mul", [x, y])
    end

    def mul_no_nan(x, y)
      execute("MulNoNan", [x, y])
    end

    def neg(x)
      execute("Neg", [x])
    end

    def no_op()
      execute("NoOp", [])
    end

    def not_equal(x, y)
      execute("NotEqual", [x, y])
    end

    def one_hot(indices, depth, on_value, off_value)
      execute("OneHot", [indices, depth, on_value, off_value])
    end

    def ones_like(x)
      execute("OnesLike", [x])
    end

    def pad(input, paddings)
      execute("Pad", [input, paddings])
    end

    def population_count(x)
      execute("PopulationCount", [x])
    end

    def pow(x, y)
      execute("Pow", [x, y])
    end

    def print(input, data)
      execute("Print", [input, data])
    end

    def quantized_add(x, y, min_x, max_x, min_y, max_y)
      execute("QuantizedAdd", [x, y, min_x, max_x, min_y, max_y])
    end

    def quantized_instance_norm(x, x_min, x_max)
      execute("QuantizedInstanceNorm", [x, x_min, x_max])
    end

    def quantized_mul(x, y, min_x, max_x, min_y, max_y)
      execute("QuantizedMul", [x, y, min_x, max_x, min_y, max_y])
    end

    def range(start, limit, delta)
      execute("Range", [start, limit, delta])
    end

    def rank(input)
      execute("Rank", [input])
    end

    def real_div(x, y)
      execute("RealDiv", [x, y])
    end

    def reciprocal(x)
      execute("Reciprocal", [x])
    end

    def reshape(tensor, shape)
      execute("Reshape", [tensor, shape])
    end

    def reverse(tensor, dims)
      execute("Reverse", [tensor, dims])
    end

    def reverse_sequence(input, seq_lengths)
      execute("ReverseSequence", [input, seq_lengths])
    end

    def right_shift(x, y)
      execute("RightShift", [x, y])
    end

    def rint(x)
      execute("Rint", [x])
    end

    def roll(input, shift, axis)
      execute("Roll", [input, shift, axis])
    end

    def round(x)
      execute("Round", [x])
    end

    def rsqrt(x)
      execute("Rsqrt", [x])
    end

    def scatter_nd(indices, updates, shape)
      execute("ScatterNd", [indices, updates, shape])
    end

    def shape(input)
      execute("Shape", [input])
    end

    def shape_n(input)
      execute("ShapeN", [input])
    end

    def sigmoid(x)
      execute("Sigmoid", [x])
    end

    def sign(x)
      execute("Sign", [x])
    end

    def sin(x)
      execute("Sin", [x])
    end

    def sinh(x)
      execute("Sinh", [x])
    end

    def size(input)
      execute("Size", [input])
    end

    def slice(input, begin_, size)
      execute("Slice", [input, begin_, size])
    end

    def space_to_batch(input, paddings)
      execute("SpaceToBatch", [input, paddings])
    end

    def space_to_batch_nd(input, block_shape, paddings)
      execute("SpaceToBatchND", [input, block_shape, paddings])
    end

    def split(split_dim, value)
      execute("Split", [split_dim, value])
    end

    def sqrt(x)
      execute("Sqrt", [x])
    end

    def square(x)
      execute("Square", [x])
    end

    def squared_difference(x, y)
      execute("SquaredDifference", [x, y])
    end

    def squeeze(input)
      execute("Squeeze", [input])
    end

    def stack()
      execute("Stack", [])
    end

    def stop_gradient(input)
      execute("StopGradient", [input])
    end

    def strided_slice(input, begin_, end_, strides)
      execute("StridedSlice", [input, begin_, end_, strides])
    end

    def subtract(x, y)
      execute("Sub", [x, y])
    end

    def tan(x)
      execute("Tan", [x])
    end

    def tanh(x)
      execute("Tanh", [x])
    end

    def tile(input, multiples)
      execute("Tile", [input, multiples])
    end

    def timestamp()
      execute("Timestamp", [])
    end

    def transpose(x, perm)
      execute("Transpose", [x, perm])
    end

    def truncate_div(x, y)
      execute("TruncateDiv", [x, y])
    end

    def truncate_mod(x, y)
      execute("TruncateMod", [x, y])
    end

    def unique(x)
      execute("Unique", [x])
    end

    def unique_with_counts(x)
      execute("UniqueWithCounts", [x])
    end

    def unravel_index(indices, dims)
      execute("UnravelIndex", [indices, dims])
    end

    def where(input)
      execute("Where", [input])
    end

    def xdivy(x, y)
      execute("Xdivy", [x, y])
    end

    def xlogy(x, y)
      execute("Xlogy", [x, y])
    end

    def zeros_like(x)
      execute("ZerosLike", [x])
    end

    def zeta(x, q)
      execute("Zeta", [x, q])
    end
  end
end
