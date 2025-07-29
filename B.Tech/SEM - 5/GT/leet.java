import java.util.ArrayList;

public class leet {

    public static void main(String[] args) {
        int[] ans = smallestSubarrays(new int[]{1,0,2,1,3});
        // int[] ans1 = smallestSubarrays(new int[]{1,2});

        for(int i : ans){
            System.out.print(i);
        }
    }

    static public int[] smallestSubarrays(int[] nums) {
        String max_or = Integer.toBinaryString(getMaxOr(nums, nums.length-1));

        int[] ans = new int[nums.length];
        int index = 0;
        
        for(int i=0 ; i< nums.length ; i++){
            ArrayList<Integer> subarr = new ArrayList<Integer>();
            for(int j=i ; j<nums.length ; j++){
                subarr.add(nums[j]);

                if(Integer.toBinaryString(getMaxOr(subarr.stream().mapToInt(Integer::intValue).toArray(), subarr.size()-1)).equals(max_or)){
                    System.out.println(Integer.toBinaryString(getMaxOr(subarr.stream().mapToInt(Integer::intValue).toArray(), subarr.size()-1)));
                    ans[index] = subarr.size();
                    index++;
                    break;
                }
            }
        }
        return ans;

    }

    static int getMaxOr(int[] arr, int n){
        if(n < 0){
            return 1;
        }
        return arr[n] | getMaxOr(arr, n-1);
    }
}
