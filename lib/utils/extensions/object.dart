/// Extensions on [Object]
extension Let<T extends Object> on T {
  /// Function to map some object [T] to another object [V]
  V let<V>(V Function(T it) func) => func(this);
}
