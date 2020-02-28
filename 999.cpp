#include <algorithm>
#include <bitset>
#include <cassert>
#include <cmath>
#include <ctime>
#include <deque>
#include <functional>
#include <iostream>
#include <map>
#include <queue>
#include <set>
#include <stack>
#include <string>
#include <tuple>
#include <vector>

#define REP(i,n)  for (int i = 0; i < (n); ++i)
#define SORT(a)   sort((a).begin(), (a).end());
#define UNIQ(a)   SORT(a);(a).erase(unique((a).begin(), (a).end()), (a).end());
#define FIND(a,x) find((a).begin(), (a).end(), (x)) != (a).end()

using namespace std;
using ll = long long;
using P = pair<int,int>;
using namespace std;

const int MOD = 1000000007; // 10^9 + 7

int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int N; cin >> N;
  vector<ll> a(2 * N);
  REP(i, 2 * N) cin >> a[i];
  vector<ll> left(N), right(N);

  ll lsum = 0;
  for(int i = 0; i < N; i++) {
    lsum += a[i * 2] - a[i * 2 + 1];
    left[i] = lsum;
  }

  ll rsum = 0;
  for(int i = N - 1; i >= 0; i--) {
    rsum += a[i * 2 + 1] - a[i * 2];
    right[i] = rsum;
    // cout << "right[" << N - i - 1 << "] = " << right[i] << endl;
  }
  reverse(right.begin(), right.end());

  ll ans = 0;
  for (int i = 0; i < N - 1; i++) {
    ans = max(ans, left[i] + right[N - i - 2]);
  }
  ans = max(ans, max(right[N - 1], left[N - 1]));
  cout << ans << endl;
}