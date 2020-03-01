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
#include <vector>

#define REP(i,n)   for (int i = 0; i < (n); ++i)
#define SORT(a)    sort((a).begin(), (a).end());
#define UNIQ(a)    SORT(a);(a).erase(unique((a).begin(), (a).end()), (a).end());
#define FIND(a,x)  find((a).begin(), (a).end(), (x)) != (a).end()
#define REVERSE(a) reverse((a).begin(), (a).end());

using namespace std;
using ll = long long;
using P = pair<int,int>;

const int MOD = 1000000007; // 10^9 + 7

int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  string s; cin >> s;

  int ans = 0;
  int tmp = 0;
  bool op = true; // true: add

  for (int i = 0; i < s.size(); i++) {
    if (s[i] == '+' || s[i] == '*') {
      if (op) {
        ans += tmp;
      } else {
        ans *= tmp;
      }
      tmp = 0;

      op = s[i] == '*';
    } else {
      tmp = tmp * 10 + (s[i] - '0');
    }
  }
  ans = op ? ans + tmp : ans * tmp;

  cout << ans << endl;
}