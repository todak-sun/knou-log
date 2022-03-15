import java.util.Arrays;

public class QuickSort {

  public void sort(int[] arr, int start, int end) {
    if (start < end) {
      int mid = this.partition(arr, start, end);
      this.sort(arr, 0, mid);
      this.sort(arr, mid + 1, end);
    }
  }

  private int partition(int[] arr, int start, int end) {
    int pivot = arr[start];
    int left = start + 1;
    int right = end - 1;
    System.out.println(String.format("partition start: %d, end: %d", start, end));
    while (left < right) {
      while (left < end && arr[left] < pivot) {
        left++;
      }
      while (right > start && arr[right] >= pivot) {
        right--;
      }
      System.out
          .println(String.format(
              "B arr: %s, start: %d, end: %d, arr[start]: %d, left: %d, arr[left]: %d, right: %d, arr[right]: %d",
              Arrays.toString(arr), start, end, arr[start], left, arr[left], right, arr[right]));
      if (left < right) {
        this.swap(arr, left, right);
      } else {
        this.swap(arr, start, right);
      }
      System.out
          .println(String.format(
              "A arr: %s, start: %d, end: %d, arr[start]: %d, left: %d, arr[left]: %d, right: %d, arr[right]: %d",
              Arrays.toString(arr), start, end, arr[start], left, arr[left], right, arr[right]));
    }

    return right;
  }

  private void swap(int arr[], int i, int j) {
    int tmp = arr[i];
    arr[i] = arr[j];
    arr[j] = tmp;
  }

  public static void main(String[] args) {
    QuickSort qs = new QuickSort();
    int[] target = { 35, 26, 15, 77, 10, 61, 11, 59, 17, 48, 19, 40 };
    // S35 26 15 77 10 61 11 59 17 48 19 40
    // S35 26 15 L77 10 61 11 59 17 48 R19 40
    // S35 26 15 L19 10 61 11 59 17 48 R77 40
    // S35 26 15 19 10 L61 11 59 R17 48 77 40
    // S35 26 15 19 10 L17 11 59 R61 48 77 40
    // S35 26 15 19 10 17 R11 L59 61 48 77 40
    // S11 26 15 19 10 17 R35 L59 61 48 77 40

    // S11 26 15 19 10 17
    // S11 L26 15 19 R10 17
    // S11 L10 15 19 R26 17
    // S11 R10 L15 19 26 17
    // S10 R11 L15 19 26 17

    // S59 61 48 77 40
    // S59 L61 48 77 R40
    // S59 L40 48 77 R61
    // S59 40 R48 L77 61
    // S48 40 R59 L77 61

    System.out.println(String.format("target.length=%d", target.length));
    qs.sort(target, 0, target.length);
    System.out.println(Arrays.toString(target));
  }

}