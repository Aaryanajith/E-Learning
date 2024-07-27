// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preference_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$setPreferencesHash() => r'3cdbd6ada35e37743b83219517cd2d1f5bbf64c2';

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

/// See also [setPreferences].
@ProviderFor(setPreferences)
const setPreferencesProvider = SetPreferencesFamily();

/// See also [setPreferences].
class SetPreferencesFamily extends Family<AsyncValue<void>> {
  /// See also [setPreferences].
  const SetPreferencesFamily();

  /// See also [setPreferences].
  SetPreferencesProvider call(
    Map<int, List<String>> selections,
  ) {
    return SetPreferencesProvider(
      selections,
    );
  }

  @override
  SetPreferencesProvider getProviderOverride(
    covariant SetPreferencesProvider provider,
  ) {
    return call(
      provider.selections,
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
  String? get name => r'setPreferencesProvider';
}

/// See also [setPreferences].
class SetPreferencesProvider extends AutoDisposeFutureProvider<void> {
  /// See also [setPreferences].
  SetPreferencesProvider(
    Map<int, List<String>> selections,
  ) : this._internal(
          (ref) => setPreferences(
            ref as SetPreferencesRef,
            selections,
          ),
          from: setPreferencesProvider,
          name: r'setPreferencesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setPreferencesHash,
          dependencies: SetPreferencesFamily._dependencies,
          allTransitiveDependencies:
              SetPreferencesFamily._allTransitiveDependencies,
          selections: selections,
        );

  SetPreferencesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.selections,
  }) : super.internal();

  final Map<int, List<String>> selections;

  @override
  Override overrideWith(
    FutureOr<void> Function(SetPreferencesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetPreferencesProvider._internal(
        (ref) => create(ref as SetPreferencesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        selections: selections,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SetPreferencesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetPreferencesProvider && other.selections == selections;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, selections.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SetPreferencesRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `selections` of this provider.
  Map<int, List<String>> get selections;
}

class _SetPreferencesProviderElement
    extends AutoDisposeFutureProviderElement<void> with SetPreferencesRef {
  _SetPreferencesProviderElement(super.provider);

  @override
  Map<int, List<String>> get selections =>
      (origin as SetPreferencesProvider).selections;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
