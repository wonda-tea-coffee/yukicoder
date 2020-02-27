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

const int MOD = 1000003;
int x;

// x^a mod MOD
ll modpow(int x, int a) {
  ll ret = 1;
  a %= MOD - 1;

  ll y = x;
  while (a > 0) {
    if (a % 2 == 1) ret = (ret * y) % MOD;
    y = y * y % MOD;
    a /= 2;
  }

  return ret;
}

int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int N;
  cin >> x >> N;
  int a[N];
  rep(i, N) cin >> a[i];

  ll ans = 0;
  rep(i, N) {
    ll m = modpow(x, a[i]);
    ans = (ans + m) % MOD;
  }

  cout << ans << endl;
}