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

int comb(int n, int r) {
  if (n < r)  return 0;
  if (n == r) return 1;
  if (r == 0) return 1;
  return comb(n - 1, r - 1) + comb(n - 1, r);
}

int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  string s; cin >> s;
  int n = s.size();
  map<char, int> mm;

  for (int i = 0; i < n; i++) {
    if (mm.count(s[i]) == 0) {
      mm.insert(make_pair(s[i], 1));
    } else {
      mm[s[i]]++;
    }
  }

  int ans = 1;
  auto begin = mm.begin(), end = mm.end();

  for (auto iter = begin; iter != end; iter++) {
    ans *= comb(n, iter->second);
    n -= iter->second;
  }

  cout << ans - 1 << endl;
}