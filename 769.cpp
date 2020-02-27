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

using namespace std;

int nextTurn(int turn, int d, int mod)
{
  turn += d;
  if (turn < 0)
  {
    return turn + mod;
  }
  else
  {
    return turn % mod;
  }
}

int main()
{
  int n, m;
  cin >> n >> m;
  string l[m];
  int c[n];
  for (int i = 0; i < m; i++)
  {
    cin >> l[i];
  }
  for (int i = 0; i < n; i++)
  {
    c[i] = 0;
  }

  int turn = 0;
  int drawCardCnt = 0;
  int drawNumBefore = 0; // 0 or 2 or 4
  int d = 1;

  for (int i = 0; i < m; i++)
  {
    string li = l[i];
    int drawNum = -1;

    if (li == "drawtwo")
    {
      drawNum = 2;
    }
    else if (li == "drawfour")
    {
      drawNum = 4;
    }
    else
    {
      drawNum = 0;
    }

    cout << "i = " << i << ", drawNumBefore = " << drawNumBefore << ", drawNum = " << drawNum << ", turn = " << turn << ", card = " << li << ", drawCardCnt = " << drawCardCnt << endl;

    if (i == 0 || drawNumBefore == drawNum)
    {
      c[turn]++;
      if (li == "number")
      {
        turn = nextTurn(turn, d, n);
      }
      else if (li == "reverse")
      {
        d = -d;
        turn = nextTurn(turn, d, n);
      }
      else if (li == "skip")
      {
        turn = nextTurn(turn, d, n);
        turn = nextTurn(turn, d, n);
      }
      else
      {
        turn = nextTurn(turn, d, n);
      }
      drawCardCnt++;
    }
    else
    {
      c[turn] += drawNumBefore * drawCardCnt;
      turn = nextTurn(turn, d, n);
      c[turn]++;
      if (li == "number")
      {
        turn = nextTurn(turn, d, n);
      }
      else if (li == "reverse")
      {
        d = -d;
        turn = nextTurn(turn, d, n);
      }
      else if (li == "skip")
      {
        turn = nextTurn(turn, d, n);
        turn = nextTurn(turn, d, n);
      }
      else
      {
        turn = nextTurn(turn, d, n);
      }

      drawCardCnt = 1;
    }

    cout << c[0];
    for (int k = 1; k < n; k++) {
      cout << " " << c[k];
    }
    cout << endl;

    drawNumBefore = drawNum;
  }

  int max = 0;
  int maxId = -1;
  for (int i = 0; i < n; i++)
  {
    cout << c[i] << " ";
    if (c[i] > max)
    {
      max = c[i];
      maxId = i;
    }
  }
  cout << endl;
  cout << maxId + 1 << " " << max << endl;
}