/// @description value_shift
/// @param value that gets shifted
/// @param target value to shift towards
/// @param shift amount
if (argument0 < argument1) {
    return min(argument0 + argument2, argument1);
}
else {
    return max(argument0 - argument2, argument1);
}