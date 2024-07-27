// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getLeaderboardHash() => r'88d5936166e26ba4a13f3833bb5d8757954cd830';

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

/// See also [getLeaderboard].
@ProviderFor(getLeaderboard)
const getLeaderboardProvider = GetLeaderboardFamily();

/// See also [getLeaderboard].
class GetLeaderboardFamily extends Family<AsyncValue<LeaderboardData>> {
  /// See also [getLeaderboard].
  const GetLeaderboardFamily();

  /// See also [getLeaderboard].
  GetLeaderboardProvider call(
    String startDate,
  ) {
    return GetLeaderboardProvider(
      startDate,
    );
  }

  @override
  GetLeaderboardProvider getProviderOverride(
    covariant GetLeaderboardProvider provider,
  ) {
    return call(
      provider.startDate,
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
  String? get name => r'getLeaderboardProvider';
}

/// See also [getLeaderboard].
class GetLeaderboardProvider
    extends AutoDisposeFutureProvider<LeaderboardData> {
  /// See also [getLeaderboard].
  GetLeaderboardProvider(
    String startDate,
  ) : this._internal(
          (ref) => getLeaderboard(
            ref as GetLeaderboardRef,
            startDate,
          ),
          from: getLeaderboardProvider,
          name: r'getLeaderboardProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getLeaderboardHash,
          dependencies: GetLeaderboardFamily._dependencies,
          allTransitiveDependencies:
              GetLeaderboardFamily._allTransitiveDependencies,
          startDate: startDate,
        );

  GetLeaderboardProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.startDate,
  }) : super.internal();

  final String startDate;

  @override
  Override overrideWith(
    FutureOr<LeaderboardData> Function(GetLeaderboardRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetLeaderboardProvider._internal(
        (ref) => create(ref as GetLeaderboardRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        startDate: startDate,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<LeaderboardData> createElement() {
    return _GetLeaderboardProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetLeaderboardProvider && other.startDate == startDate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, startDate.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetLeaderboardRef on AutoDisposeFutureProviderRef<LeaderboardData> {
  /// The parameter `startDate` of this provider.
  String get startDate;
}

class _GetLeaderboardProviderElement
    extends AutoDisposeFutureProviderElement<LeaderboardData>
    with GetLeaderboardRef {
  _GetLeaderboardProviderElement(super.provider);

  @override
  String get startDate => (origin as GetLeaderboardProvider).startDate;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
