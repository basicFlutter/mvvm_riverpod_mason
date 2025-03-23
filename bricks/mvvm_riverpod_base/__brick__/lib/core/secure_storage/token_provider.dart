import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../network/token_manager.dart';

part 'token_provider.g.dart';

@riverpod
class Token extends _$Token {
  @override
  Future<({String? accessToken, String? refreshToken})> build() async {
    final accessToken = await TokenManager.getAccessToken();
    final refreshToken = await TokenManager.getRefreshToken();
    return (accessToken: accessToken, refreshToken: refreshToken);
  }

  Future<void> setTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await TokenManager.setTokens(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
    state = AsyncData((accessToken: accessToken, refreshToken: refreshToken));
  }

  Future<void> clearTokens() async {
    await TokenManager.clearTokens();
    state = AsyncData((accessToken: null, refreshToken: null));
  }

  Future<void> refreshAccessToken(String newAccessToken) async {
    final currentTokens = state.value;
    if (currentTokens != null) {
      await TokenManager.setTokens(
        accessToken: newAccessToken,
        refreshToken: currentTokens.refreshToken!,
      );
      state = AsyncData((
        accessToken: newAccessToken,
        refreshToken: currentTokens.refreshToken,
      ));
    }
  }
} 