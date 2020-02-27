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

  ll W, H, N; cin >> W >> H >> N;
  int S[N], K[N];
  rep(i, N) cin >> S[i] >> K[i];

  set<int> setS, setK;
  rep(i, N) {
    setS.insert(S[i]);
    setK.insert(K[i]);
  }

  ll A = setS.size(), B = setK.size();
  cout << A * H + B * W - A * B - N << endl;
}