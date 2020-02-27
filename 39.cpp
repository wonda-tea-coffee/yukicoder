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

  string n;cin >> n;
  int size = n.size();

  int ans = stoi(n);
  for (int i = 0; i < size; i++) {
    for (int j = i + 1; j < size; j++) {
      string m = n;
      swap(m[i], m[j]);
      ans = max(ans, stoi(m));
    }
  }

  cout << ans << endl;
}