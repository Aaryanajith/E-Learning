// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getVideosHash() => r'eb956186f4500af706d3452898f6ad885aef013c';

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

/// See also [getVideos].
@ProviderFor(getVideos)
const getVideosProvider = GetVideosFamily();

/// See also [getVideos].
class GetVideosFamily extends Family<AsyncValue<List<Video>>> {
  /// See also [getVideos].
  const GetVideosFamily();

  /// See also [getVideos].
  GetVideosProvider call(
    String id,
  ) {
    return GetVideosProvider(
      id,
    );
  }

  @override
  GetVideosProvider getProviderOverride(
    covariant GetVideosProvider provider,
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
  String? get name => r'getVideosProvider';
}

/// See also [getVideos].
class GetVideosProvider extends AutoDisposeFutureProvider<List<Video>> {
  /// See also [getVideos].
  GetVideosProvider(
    String id,
  ) : this._internal(
          (ref) => getVideos(
            ref as GetVideosRef,
            id,
          ),
          from: getVideosProvider,
          name: r'getVideosProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getVideosHash,
          dependencies: GetVideosFamily._dependencies,
          allTransitiveDependencies: GetVideosFamily._allTransitiveDependencies,
          id: id,
        );

  GetVideosProvider._internal(
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
    FutureOr<List<Video>> Function(GetVideosRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetVideosProvider._internal(
        (ref) => create(ref as GetVideosRef),
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
  AutoDisposeFutureProviderElement<List<Video>> createElement() {
    return _GetVideosProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetVideosProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetVideosRef on AutoDisposeFutureProviderRef<List<Video>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetVideosProviderElement
    extends AutoDisposeFutureProviderElement<List<Video>> with GetVideosRef {
  _GetVideosProviderElement(super.provider);

  @override
  String get id => (origin as GetVideosProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
