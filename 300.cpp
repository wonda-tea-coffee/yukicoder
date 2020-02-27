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

  ll x; cin >> x;
  ll ans = 1, d = 2, y = x;
  for (ll d = 2; d * d <= x && y > 0; d++) {
    int cnt = 0;
    while (y % d == 0) {
      y /= d;
      cnt += 1;
    }
    if (cnt % 2 == 1) ans *= d;
  }
  if (y > 0) {
    ans *= y;
  }
  cout << ans << endl;
}