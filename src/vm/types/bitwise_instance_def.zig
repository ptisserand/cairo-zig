/// Number of cells by bitwise operation
pub const CELLS_PER_BITWISE: u32 = 5;
/// Number of input cells by bitwise operation
pub const INPUT_CELLS_PER_BITWISE: u32 = 2;

/// Represents a Bitwise Instance Definition.
pub const BitwiseInstanceDef = struct {
    const Self = @This();

    /// Ratio
    ratio: ?u32,
    /// The number of bits in a single field element that are supported by the bitwise builtin.
    total_n_bits: u32,

    pub fn init() Self {
        return .{ .ratio = 256, .total_n_bits = 251 };
    }

    pub fn from(ratio: ?u32) Self {
        return .{ .ratio = ratio, .total_n_bits = 251 };
    }
};
