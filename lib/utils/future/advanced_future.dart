import 'dart:async';

/// Wrapper for future call
typedef FutureCall<T> = Future<T> Function();
typedef FutureMap<Q> = Future<Q> Function();

/// This future is used when you need to know whether function was called
///
/// This "future" wraps [FutureCall] and invokes it on [call]
///
/// It has [isLaunched] getter which tells whether [FutureCall] was called or wasn't
class AdvancedFuture<T> implements Future<T> {
  AdvancedFuture(this._wrapped);

  final FutureCall<T> _wrapped;
  final _completer = Completer<T>();
  var _isLaunched = false;

  /// Tells whether [FutureCall] was called
  bool get isLaunched => _isLaunched;

  /// Tells whether [FutureCall] wasn't called
  bool get isNotLaunched => !_isLaunched;

  Future<T> call() {
    return _call();
  }

  Future<T> _call() {
    if (isNotLaunched) {
      _isLaunched = true;
      final future = _wrapped();
      _completer.complete(future);
      return future;
    } else {
      return _completer.future;
    }
  }

  /// Invokes [callback] if function was called
  Future<Q?> ifLaunched<Q>(FutureMap<Q> callback) {
    if (isLaunched) {
      return callback();
    }
    return Future.value();
  }

  /// Invokes [callback] if function wasn't called
  Future<Q?> ifNotLaunched<Q>(FutureMap<Q> callback) {
    if (isNotLaunched) {
      callback();
    }
    return Future.value();
  }

  @override
  Stream<T> asStream() {
    return _call().asStream();
  }

  @override
  Future<T> catchError(Function onError, {bool Function(Object error)? test}) {
    return _call().catchError(onError, test: test);
  }

  @override
  Future<R> then<R>(FutureOr<R> Function(T value) onValue, {Function? onError}) {
    return _call().then(onValue, onError: onError);
  }

  @override
  Future<T> timeout(Duration timeLimit, {FutureOr<T> Function()? onTimeout}) {
    return _call().timeout(timeLimit, onTimeout: onTimeout);
  }

  @override
  Future<T> whenComplete(FutureOr<void> Function() action) {
    return _call().whenComplete(action);
  }
}
