#include<iostream>
#include<vector>
using namespace std;

int n, m;
int turn, dir;

void proceed() {
  turn = (turn + dir + n) % n;
}

int main(){
  cin.tie(0);
  ios::sync_with_stdio(false);

  cin >> n >> m;

  vector<int> put(n, 0), draw(n, 0);
  int d2 = 0, d4 = 0;
  turn = 0, dir = 1;

  string card;
  while (m-- > 0) {
    cin >> card;

    if (d2 && card == "drawtwo") {
      d2++;
      put[turn]++;
      proceed();
      continue;
    }

    if (d4 && card == "drawfour") {
      d4++;
      put[turn]++;
      proceed();
      continue;
    }

    if(d2) {
      draw[turn] += 2 * d2;
      d2 = 0;
      proceed();
    }

    if(d4) {
      draw[turn] += 4 * d4;
      d4 = 0;
      proceed();
    }

    put[turn]++;

    if (card == "drawtwo") {
      d2++;
    } else if (card == "drawfour") {
      d4++;
    } else if (card == "skip") {
      proceed();
    } else if (card == "reverse") {
      dir *= -1;
    } else if (card == "number") {
      // do nothing.
    }
    proceed();
  }

  turn = (turn - dir + n) % n;

  cout << turn + 1 << " " << put[turn] - draw[turn] << endl;

  return 0;
}
