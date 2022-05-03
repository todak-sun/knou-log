import java.util.Arrays;
import java.util.Scanner;

public class MatrixChainMultiplication {

  public int solve(int[][] matSize) {
    int length = matSize.length;
    int[][] dp = new int[length][length];

    for (int i = 0; i < length; i++) {
      for (int j = 0; j < length; j++) {
        dp[i][j] = Integer.MAX_VALUE;
      }
    }

    for (int i = 0; i < length; i++) {
      for (int j = 0; j < length - 1; j++) {
        int a = j;
        int b = j + 1;
        if (a == b) {
          dp[a][b] = 0;
        } else {
          for (int k = a; k < b; k++) {
            dp[a][b] = Math.min(dp[a][b], dp[a][k] + dp[k + 1][b] + matSize[a][0] * matSize[k][1] * matSize[b][1]);
          }
        }
      }
    }
    System.out.println(Arrays.deepToString(dp));
    return dp[0][length - 1];
  }

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    int[][] m = new int[n + 1][n + 1];
    int[] d = new int[n + 1];

    for (int i = 0; i < n; i++) {
      d[i] = sc.nextInt();
      d[i + 1] = sc.nextInt();
    }

    for (int len = 2; len <= n; len++) {
      for (int i = 1; i <= n - len + 1; i++) {
        int j = i + len - 1;
        m[i][j] = Integer.MAX_VALUE;
        for (int k = i; k < j; k++) {
          int cost = m[i][k] + m[k + 1][j] + d[i - 1] * d[k] * d[j];
          m[i][j] = Math.min(m[i][j], cost);
        }
      }
    }

    for (int[] item : m) {
      System.out.println(Arrays.toString(item));
    }

    System.out.println(m[1][n]);
  }

}