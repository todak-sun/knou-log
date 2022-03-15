public class BinarySearch {

  public int search(int[] arr, int left, int right, int target) {
    if (left > right) {
      return -1;
    }
    int mid = (left + right) / 2;
    if (target == arr[mid]) {
      return mid;
    } else if (target < arr[mid]) {
      return this.search(arr, left, mid - 1, target);
    } else {
      return this.search(arr, mid + 1, right, target);
    }
  }

  public static void main(String[] args) {
    var bs = new BinarySearch();
    int[] target = { 0, 2, 3, 5, 6, 7, 9, 10, 15, 24 };
    int index = bs.search(target, 0, target.length, 21);
    System.out.println(String.format("index : %d", index));
  }

}
