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

  int n;cin >> n;
  if (n == 1) {
    cout << 1 << endl;
    return 0;
  } else if (n == 2) {
    cout << 2 << endl;
    return 0;
  }

  int dp[3][n + 1];
  dp[0][2] = 1;
  dp[1][2] = 1;
  dp[2][2] = 0;

  for (int i = 3; i <= n; i++) {
    dp[0][i] = dp[2][i - 1];
    dp[1][i] = (dp[0][i - 1] + dp[2][i - 1]) % MOD;
    dp[2][i] = dp[1][i - 1];
  }

  cout << ((dp[0][n] + dp[1][n]) % MOD + dp[2][n]) % MOD << endl;
}