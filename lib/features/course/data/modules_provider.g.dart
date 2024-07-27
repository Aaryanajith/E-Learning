// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modules_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getModulesHash() => r'70c1843e549438b888621e29467a82dd0650c731';

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

/// See also [getModules].
@ProviderFor(getModules)
const getModulesProvider = GetModulesFamily();

/// See also [getModules].
class GetModulesFamily extends Family<AsyncValue<List<Module>>> {
  /// See also [getModules].
  const GetModulesFamily();

  /// See also [getModules].
  GetModulesProvider call(
    String? id,
  ) {
    return GetModulesProvider(
      id,
    );
  }

  @override
  GetModulesProvider getProviderOverride(
    covariant GetModulesProvider provider,
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
  String? get name => r'getModulesProvider';
}

/// See also [getModules].
class GetModulesProvider extends AutoDisposeFutureProvider<List<Module>> {
  /// See also [getModules].
  GetModulesProvider(
    String? id,
  ) : this._internal(
          (ref) => getModules(
            ref as GetModulesRef,
            id,
          ),
          from: getModulesProvider,
          name: r'getModulesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getModulesHash,
          dependencies: GetModulesFamily._dependencies,
          allTransitiveDependencies:
              GetModulesFamily._allTransitiveDependencies,
          id: id,
        );

  GetModulesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String? id;

  @override
  Override overrideWith(
    FutureOr<List<Module>> Function(GetModulesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetModulesProvider._internal(
        (ref) => create(ref as GetModulesRef),
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
  AutoDisposeFutureProviderElement<List<Module>> createElement() {
    return _GetModulesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetModulesProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetModulesRef on AutoDisposeFutureProviderRef<List<Module>> {
  /// The parameter `id` of this provider.
  String? get id;
}

class _GetModulesProviderElement
    extends AutoDisposeFutureProviderElement<List<Module>> with GetModulesRef {
  _GetModulesProviderElement(super.provider);

  @override
  String? get id => (origin as GetModulesProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
