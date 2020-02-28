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

string solve(string a, string b) {
  int as = a.size();
  int bs = b.size();

  if (as < bs) return b;
  else if (as > bs) return a;

  for (int i = 0; i < as; i++) {
    int ai = a[i] - '0';
    int bi = b[i] - '0';
    if (ai == 4 && bi == 7) return a;
    else if (ai == 7 && bi == 4) return b;
    else if (ai != bi) {
      if (ai > bi) return a;
      else if (ai < bi) return b;
    }
  }
  return a;
}

int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  string A, B; cin >> A >> B;

  cout << solve(A, B) << endl;
}