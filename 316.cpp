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

ll gcd(ll a, ll b) {
  if (a < b) return gcd(b, a);
  if (b == 0) return a;
  return gcd(b, a % b);
}

ll lcm(ll a, ll b) {
  return a * b / gcd(a, b);
}

int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  ll N, a, b, c;
  cin >> N >> a >> b >> c;

  cout << N / a + N / b + N / c - N / lcm(a, b) - N / lcm(b, c) - N / lcm(c, a) + N / lcm(lcm(a, b), c) << endl;
}