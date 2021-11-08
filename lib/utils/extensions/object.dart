/// Extensions on [Object]

extension Let<T extends Object?> on T {
  /// Function to map some object [T] to another object [V]
  V let<V>(V Function(T it) func) => func(this);
}

typedef MappingFunction<T, Q> = Q Function(T a);
typedef EmptyMappingFunction<Q> = Q Function();

extension FunctionalNullable<T extends Object?> on T {
  /// Fold nullable value
  V fold<V>({required MappingFunction<T, V> some, required EmptyMappingFunction<V> none}) {
    if (this == null) {
      return none();
    } else {
      return some(this);
    }
  }
}
