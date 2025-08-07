// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filterTodosHash() => r'311645d09d157da914f8360c37e97c29f3f51149';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [filterTodos].
@ProviderFor(filterTodos)
const filterTodosProvider = FilterTodosFamily();

/// See also [filterTodos].
class FilterTodosFamily extends Family<List<Todo>> {
  /// See also [filterTodos].
  const FilterTodosFamily();

  /// See also [filterTodos].
  FilterTodosProvider call(String filter) {
    return FilterTodosProvider(filter);
  }

  @override
  FilterTodosProvider getProviderOverride(
    covariant FilterTodosProvider provider,
  ) {
    return call(provider.filter);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'filterTodosProvider';
}

/// See also [filterTodos].
class FilterTodosProvider extends AutoDisposeProvider<List<Todo>> {
  /// See also [filterTodos].
  FilterTodosProvider(String filter)
    : this._internal(
        (ref) => filterTodos(ref as FilterTodosRef, filter),
        from: filterTodosProvider,
        name: r'filterTodosProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$filterTodosHash,
        dependencies: FilterTodosFamily._dependencies,
        allTransitiveDependencies: FilterTodosFamily._allTransitiveDependencies,
        filter: filter,
      );

  FilterTodosProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filter,
  }) : super.internal();

  final String filter;

  @override
  Override overrideWith(List<Todo> Function(FilterTodosRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: FilterTodosProvider._internal(
        (ref) => create(ref as FilterTodosRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filter: filter,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<Todo>> createElement() {
    return _FilterTodosProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilterTodosProvider && other.filter == filter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FilterTodosRef on AutoDisposeProviderRef<List<Todo>> {
  /// The parameter `filter` of this provider.
  String get filter;
}

class _FilterTodosProviderElement extends AutoDisposeProviderElement<List<Todo>>
    with FilterTodosRef {
  _FilterTodosProviderElement(super.provider);

  @override
  String get filter => (origin as FilterTodosProvider).filter;
}

String _$todoNotifierHash() => r'cad8fe2098fb064572f4e35fb2af3a039d9aba25';

/// See also [TodoNotifier].
@ProviderFor(TodoNotifier)
final todoNotifierProvider =
    AutoDisposeNotifierProvider<TodoNotifier, List<Todo>>.internal(
      TodoNotifier.new,
      name: r'todoNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$todoNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$TodoNotifier = AutoDisposeNotifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
