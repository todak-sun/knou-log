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
    int left = start;
    int right = end - 1;
    while (left < right) {
      while (left < end && arr[left] < pivot) {
        left++;
      }
      while (right > start && arr[right] >= pivot) {
        right--;
      }
      if (left < right) {
        this.swap(arr, left, right);
      } else {
        this.swap(arr, start, right);
      }
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
    System.out.println(String.format("before ==== %s", Arrays.toString(target)));
    qs.sort(target, 0, target.length);
    System.out.println(String.format("after ==== %s", Arrays.toString(target)));
  }

}