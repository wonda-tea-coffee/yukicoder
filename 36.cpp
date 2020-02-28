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

#define REP(i,n)  for (int i = 0; i < (n); ++i)
#define SORT(a)   sort((a).begin(), (a).end());
#define UNIQ(a)   SORT(a);(a).erase(unique((a).begin(), (a).end()), (a).end());
#define FIND(a,x) find((a).begin(), (a).end(), (x)) != (a).end()

using namespace std;
using ll = long long;
using P = pair<int,int>;
using namespace std;

const int MOD = 1000000007; // 10^9 + 7

bool solve(ll n) {
  if (n <= 4) return false;

  ll lim = (ll)sqrt(n);
  vector<ll> primes, cnts;
  for (ll d = 2; d <= lim; d++) {
    int cnt = 0;
    while (n % d == 0) {
      cnt++;
      n /= d;
    }
    if (cnt > 0) {
      primes.push_back(d);
      cnts.push_back(cnt);
    }
  }
  if (n > 1) {
    primes.push_back(n);
    cnts.push_back(1);
  }

  if (primes.size() == 1 && cnts[0] <= 2) return false;
  if (primes.size() == 2 && cnts[0] == 1 && cnts[1] == 1) return false;
  return true;
}

int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  ll N; cin >> N;
  cout << (solve(N) ? "YES" : "NO") << endl;
}