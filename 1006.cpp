#include <algorithm>
#include <bitset>
#include <cassert>
#include <cmath>
#include <ctime>
#include <cstring>
#include <functional>
#include <iostream>
#include <map>
#include <queue>
#include <set>
#include <stack>
#include <string>
#include <vector>

#define rep(i,n)   for (int i = 0; i < (n); ++i)
#define sort(a)    sort((a).begin(), (a).end());
#define uniq(a)    SORT(a);(a).erase(unique((a).begin(), (a).end()), (a).end());
#define find(a,x)  find((a).begin(), (a).end(), (x)) != (a).end()
#define reverse(a) reverse((a).begin(), (a).end());
#define out(d) cout << (d);
#define outl(d) std::cout<<(d)<<"\n";
#define Yes() printf("Yes\n");
#define No() printf("No\n");
#define YES() printf("YES\n");
#define NO() printf("NO\n");
#define ceil(x, y) ((x + y - 1) / (y))

using namespace std;
using ll = long long;
using P = pair<ll,ll>;

const ll MOD = 1000000007; // 10^9 + 7

int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);
  srand((unsigned)time(NULL));

  ll n; cin >> n;
  vector<ll> f(n + 1);
  for (int i = 1; i <= n; i++) f[i] = i;

  for (int i = 1; i <= n; i++) {
    for (int j = i; j <= n; j += i) {
      f[j]--;
    }
  }

  priority_queue<P, vector<P>, greater<P>> q;
  ll min = 100000000;
  for (int i = 1; i <= n / 2; i++) {
    ll sub = abs(f[i] - f[n - i]);

    if (sub < min) {
      q = decltype(q)();
      q.push(make_pair(i, n - i));
      if (i != n - i) q.push(make_pair(n - i, i));
      min = sub;
    } else if (sub == min) {
      q.push(make_pair(i, n - i));
      if (i != n - i) q.push(make_pair(n - i, i));
    }
  }

  while (!q.empty()) {
    cout << q.top().first << " " << q.top().second << endl;
    q.pop();
  }
}
