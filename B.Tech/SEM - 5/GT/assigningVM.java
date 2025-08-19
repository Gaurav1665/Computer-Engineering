import java.util.ArrayList;
import java.util.Scanner;

public class assigningVM {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("no. of VMs :");
        int vm = sc.nextInt();
        System.out.print("no. of Task :");
        int task = sc.nextInt();

        int[][] vmArr = new int[vm][2];
        int[][] taskArr = new int[task][2];
        int[][] costArr = new int[vm][task];

        for(int i=0 ; i<vm ; i++){
            System.out.print((i+1)+"VM CPU : ");
            vmArr[i][0] = sc.nextInt();
            System.out.print((i+1)+"VM Memory : ");
            vmArr[i][1] = sc.nextInt();
        }
        for(int i=0 ; i<task ; i++){
            System.out.print((i+1)+"Task CPU : ");
            taskArr[i][0] = sc.nextInt();
            System.out.print((i+1)+"Task Memory : ");
            taskArr[i][1] = sc.nextInt();
        }
        for(int i=0 ; i<vm ; i++){
            for(int j=0 ; j<task ; j++){
                System.out.print("Cost of executing "+(j+1)+" task in "+(i+1)+" VM :");
                costArr[i][j] = sc.nextInt();
            }
        }

        // int vm=3, task=3;
        // int[][] vmArr = {{4, 10}, {3, 6}, {2, 5}};
        // int[][] taskArr = {{3, 6}, {2, 4}, {2, 3}};
        // int[][] costArr = {{4, 2, 1}, {2, 3, 4}, {3, 4, 3}};

        ArrayList<Integer> ans = new ArrayList<Integer>();

        for(int i=0 ; i<task ; i++){
            int cost = Integer.MAX_VALUE;
            int selectedVM = -1;
            for(int j=0 ; j<vm ; j++){
                if((taskArr[i][0] <= vmArr[j][0] && taskArr[i][1] <= vmArr[j][1]) && (costArr[i][j] < cost)){
                    cost = costArr[i][j];
                    selectedVM = j;
                }
            }
            if(selectedVM != -1){
                vmArr[selectedVM][0] -= taskArr[i][0];
                vmArr[selectedVM][1] -= taskArr[i][1];
                ans.add(selectedVM);
            }
            else{
                ans.add(-1);
            }
        }
        System.out.println(ans);
        sc.close();
    }
}
