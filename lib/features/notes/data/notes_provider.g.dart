// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getNotesHash() => r'c4e7814696850862e522b5be5a800aa1e6e99745';

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

/// See also [getNotes].
@ProviderFor(getNotes)
const getNotesProvider = GetNotesFamily();

/// See also [getNotes].
class GetNotesFamily extends Family<AsyncValue<Notes>> {
  /// See also [getNotes].
  const GetNotesFamily();

  /// See also [getNotes].
  GetNotesProvider call(
    String id,
  ) {
    return GetNotesProvider(
      id,
    );
  }

  @override
  GetNotesProvider getProviderOverride(
    covariant GetNotesProvider provider,
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
  String? get name => r'getNotesProvider';
}

/// See also [getNotes].
class GetNotesProvider extends AutoDisposeFutureProvider<Notes> {
  /// See also [getNotes].
  GetNotesProvider(
    String id,
  ) : this._internal(
          (ref) => getNotes(
            ref as GetNotesRef,
            id,
          ),
          from: getNotesProvider,
          name: r'getNotesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getNotesHash,
          dependencies: GetNotesFamily._dependencies,
          allTransitiveDependencies: GetNotesFamily._allTransitiveDependencies,
          id: id,
        );

  GetNotesProvider._internal(
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
    FutureOr<Notes> Function(GetNotesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetNotesProvider._internal(
        (ref) => create(ref as GetNotesRef),
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
  AutoDisposeFutureProviderElement<Notes> createElement() {
    return _GetNotesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetNotesProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetNotesRef on AutoDisposeFutureProviderRef<Notes> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetNotesProviderElement extends AutoDisposeFutureProviderElement<Notes>
    with GetNotesRef {
  _GetNotesProviderElement(super.provider);

  @override
  String get id => (origin as GetNotesProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
