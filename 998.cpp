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

int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  vector<int> a(4);
  cin >> a[0] >> a[1] >> a[2] >> a[3];
  SORT(a);
  if (a[0] + 1 == a[1] && a[1] + 1 == a[2] && a[2] + 1 == a[3]) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
}