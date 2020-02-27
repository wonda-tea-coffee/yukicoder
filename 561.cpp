#include <algorithm>
#include <bitset>
#include <cassert>
#include <cmath>
#include <ctime>
#include <functional>
#include <iostream>
#include <map>
#include <queue>
#include <set>
#include <stack>
#include <string>
#include <tuple>
#include <vector>

#define rep(i,n) for (int i = 0; i < (n); ++i)

using namespace std;
using ll = long long;
using P = pair<int,int>;
using namespace std;

const int MOD = 1000000007; // 10^9 + 7

int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int N, D;cin >> N >> D;
  int T[N], K[N];
  rep(i, N) cin >> T[i] >> K[i];
  ll dp[N][2];

  for (int i = 0; i < N; i++) {
    dp[i][0] = 0;
    dp[i][1] = 0;
  }

  dp[0][0] = T[0];
  dp[0][1] = K[0] - D;
  for (int i = 1; i < N; i++) {
    dp[i][0] = max(dp[i - 1][0], dp[i - 1][1] - D) + T[i];
    dp[i][1] = max(dp[i - 1][1], dp[i - 1][0] - D) + K[i];
  }

  cout << max(dp[N - 1][0], dp[N - 1][1]) << endl;
}