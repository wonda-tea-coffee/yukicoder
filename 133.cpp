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

#define REP(i,n) for (int i = 0; i < (n); ++i)
#define SORT(a) sort((a).begin(), (a).end());
#define UNIQ(a) SORT(a);(a).erase(unique((a).begin(), (a).end()), (a).end());

using namespace std;
using ll = long long;
using P = pair<int,int>;
using namespace std;

const int MOD = 1000000007; // 10^9 + 7

void copy(vector<int> from, vector<int> to) {
  REP(i, from.size()) to[i] = from[i];
}

int fact(int n) {
  int ret = 1;
  while (n > 1) {
    ret *= n;
    n--;
  }
  return ret;
}

int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int N; cin >> N;
  vector<int> A(N, 0), B(N, 0);
  REP(i, N) cin >> A[i];
  REP(i, N) cin >> B[i];
  SORT(A); SORT(B);

  vector<int> B_ORIGIN(N, 0);
  copy(B, B_ORIGIN);
  int sum = 0;
  do {
    do {
      int winA = 0, winB = 0;
      REP(i, N) {
        if (A[i] > B[i]) {
          winA++;
        } else if (A[i] < B[i]) {
          winB++;
        }
      }
      if (winA > winB) sum++;
    } while (next_permutation(B.begin(), B.end()));

    copy(B_ORIGIN, B);
  } while (next_permutation(A.begin(), A.end()));

  cout << (double)sum / (fact(N) * fact(N)) << endl;
}