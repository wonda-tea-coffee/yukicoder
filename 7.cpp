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

int n;
map<int, bool> memo;
const int MAX = 10000;
bool isPrime[MAX + 1];

void sieve() {
  for (int i = 0; i <= MAX; i++) isPrime[i] = true;

  isPrime[0] = false;
  isPrime[1] = false;
  for (int i = 4; i <= n; i += 2) {
    isPrime[i] = false;
  }

  int lim = (int)sqrt(n);
  for (int i = 3; i <= lim; i += 2) {
    for (int j = 3; i * j <= n; j += 2) {
      isPrime[i * j] = false;
    }
  }
}

int solve(int m) {
  if (memo.find(m) != memo.end()) {
    return memo[m];
  }

  for (int i = 2; i < m; i++) {
    if (!isPrime[i]) continue;
    if (m - i > 1 && !solve(m - i)) {
      memo[m] = true;
      return true;
    }
  }

  memo[m] = false;
  return false;
}

int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  cin >> n;

  sieve();
  memo[0] = false;
  memo[1] = false;
  memo[2] = false;

  if (solve(n)) {
    cout << "Win" << endl;
  } else {
    cout << "Lose" << endl;
  }
}