import java.util.Arrays;

public class MergeSorter {

  public void sort(int[] arr, int start, int end) {
    if (start < end) {
      int mid = (start + end) / 2;
      this.sort(arr, start, mid);
      this.sort(arr, mid + 1, end);
      this.merge(arr, start, mid, end);
    }
  }

  private void merge(int[] arr, int start, int mid, int end) {
    int[] tmp = arr.clone();

    int left = start;
    int right = mid + 1;
    int index = start;

    while (left <= mid && right <= end) {
      if (tmp[left] <= tmp[right]) {
        arr[index++] = tmp[left++];
      } else {
        arr[index++] = tmp[right++];
      }
    }

    for (int i = 0; i <= mid - left; i++) {
      arr[index + i] = tmp[left + i];
    }
  }

  public static void main(String[] args) {
    int[] target = { 19, 18, 1, 2, 10, 9, 5, 6 };
    new MergeSorter().sort(target, 0, target.length - 1);
    System.out.println(Arrays.toString(target));
  }

}