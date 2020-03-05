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

  string s; cin >> s;
  ll n = s.size();
  ll w[n]; memset(w, 0, sizeof(w));

  w[n - 1] = s[n - 1] == 'w' ? 1 : 0;
  for (int i = n - 2; i >= 0; i--) {
    w[i] += w[i + 1];
    if (s[i] == 'w') w[i]++;
  }

  ll sum = 0;

  for (int i = 0; i < n; i++)
    if (s[i] == 'c') {
      sum += w[i] * (w[i] - 1) / 2;
    }

  outl(sum)
}
