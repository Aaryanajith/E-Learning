// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getQuizesHash() => r'df175eb316face49a4786ab07bec095e8f8a8b37';

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

/// See also [getQuizes].
@ProviderFor(getQuizes)
const getQuizesProvider = GetQuizesFamily();

/// See also [getQuizes].
class GetQuizesFamily extends Family<AsyncValue<List<Quiz>>> {
  /// See also [getQuizes].
  const GetQuizesFamily();

  /// See also [getQuizes].
  GetQuizesProvider call(
    String id,
  ) {
    return GetQuizesProvider(
      id,
    );
  }

  @override
  GetQuizesProvider getProviderOverride(
    covariant GetQuizesProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getQuizesProvider';
}

/// See also [getQuizes].
class GetQuizesProvider extends AutoDisposeFutureProvider<List<Quiz>> {
  /// See also [getQuizes].
  GetQuizesProvider(
    String id,
  ) : this._internal(
          (ref) => getQuizes(
            ref as GetQuizesRef,
            id,
          ),
          from: getQuizesProvider,
          name: r'getQuizesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getQuizesHash,
          dependencies: GetQuizesFamily._dependencies,
          allTransitiveDependencies: GetQuizesFamily._allTransitiveDependencies,
          id: id,
        );

  GetQuizesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<List<Quiz>> Function(GetQuizesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetQuizesProvider._internal(
        (ref) => create(ref as GetQuizesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Quiz>> createElement() {
    return _GetQuizesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetQuizesProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetQuizesRef on AutoDisposeFutureProviderRef<List<Quiz>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetQuizesProviderElement
    extends AutoDisposeFutureProviderElement<List<Quiz>> with GetQuizesRef {
  _GetQuizesProviderElement(super.provider);

  @override
  String get id => (origin as GetQuizesProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
