import java.util.*;
// import java.util.ArrayList;
// import java.util.Arrays;
// import java.util.Collections;
// import java.util.List;


// Read more: http://www.java67.com/2016/10/3-ways-to-reverse-array-in-java-coding-interview-question.html#ixzz4tL37WvjR


class CircularMatrix
{
 	public static void main(String[] args) 
	{ 
		Scanner sc = new Scanner(System.in); 
		int[] x = new int[15];  //array for valuecof x(n)
		int[] h = new int[15];	//array for valuecof h(n)
		int[] y = new int[15];	//array for valuecof y(n)
		int[] z = new int[15];
		int i=0; //no of x samples counter i.e length
		int j=0; //no of h samples counter i.e length
		int count=0; //counter to maintain circular matrix same as i 


		System.out.println(" ----------------------------------------------------");
		System.out.println("|		PEROIDIC SIGNALING		     |");
		System.out.println(" ----------------------------------------------------");
		System.out.println("| 	 USING Linear MATRIX METHOD 		     |");
		System.out.println(" ----------------------------------------------------");

		
		System.out.println();
		System.out.print("Enter all samples leaving space of x(n): ");
		String xsample=sc.nextLine();  //taking value of x(n) as a string 
		System.out.println(" ----------------------------------------------------");
		System.out.println();
		for(String w:xsample.split("\\s")) //spliting according to space
		{  
			h[j++]=Integer.parseInt(w); // after spliting covert val of x(n) into integer array
		}

		
		
		//System.out.println();
		//System.out.print(Collections.reverse(Arrays.asList(x)));

	
		System.out.print("Enter all samples leaving space of h(n): ");
		String hsample=sc.nextLine();//taking value of h(n) as a string
		System.out.println(" ----------------------------------------------------");
		System.out.println();
		for(String w:hsample.split("\\s"))//spliting according to space 
		{  
			x[i++]=Integer.parseInt(w); //after spliting covert val of h(n) into integer array
		}

		for (int tempi = 0; tempi < i/2; tempi++) 
		{
 			int tempnew = x[tempi];
 			x[tempi] = x[i - 1 - tempi];
  			x[i - 1 - tempi] = tempnew;
		} 

		int padd = i+j-1;
		System.out.println("length to be padd :- " + padd);
		

		// For padding 0's

		if(j < padd) //padding 0's
		{ 
			for (int start = j ; start < padd ; start++)
			{ 
				h[start] = 0;
			}
			j=padd;
		}
		
		  
		if(i < padd) //padding 0's
		{
			for (int start = i ; start < padd ; start++) 
			{ 
				x[start] = 0;
			}
			i=padd;		
		}
			

		int[][] xmatrix = new int [i][j]; //array for circular matrix of x(n)

		//code to convert x(n) into circluar matrix 
		for(int row = 0;row<i;row++)
		{
			for(int col=0;col<i;col++)
			{
				if(i<=count)
				{
					count=0;
				}
				else
				{
					xmatrix[col][row]=x[count++];
					if(i== count || count >i)
					{
						count=0;
					}
				}
			}
			count = i-row-1;
		}

		System.out.println();
		
		//calculating value of y(n)
		for(int row =0;row<i;row++)
		{
			for(int col=0;col<i;col++)
			{
				y[row]+=xmatrix[row][col]*h[col];
			}	
		}

		//Printing matrix circular formuale with values circularMatrix (x(n)) * h(n) = y(n)
		for(int row =0;row<i;row++)
		{
			System.out.print("| ");
			for(int col=0;col<i;col++)
			{
				System.out.print(xmatrix[row][col]+"  ");
			}
			System.out.print("| | ");
			System.out.print(h[row]+" | = | "+ y[row] +" |");
			System.out.println();
		}
		System.out.println();		
		System.out.println();
		System.out.print("main answer after convolution : ");

		//Printing value of y(n) i.e main answer
        String answer= "{ ";
        for(int row =0;row<i;row++)
        {
            answer+=y[row]+" ";
        }
		System.out.print(answer +" }");
		System.out.println();
		System.out.println();
	}
	

}
