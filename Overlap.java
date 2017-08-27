import java.util.*; 

class Overlap
{
		int[] x = new int[100];  //array for valuecof x(n)
		int[] h = new int[50];	//array for valuecof h(n)
		int[] y = new int[50];	//array for valuecof y(n)
		int[][] xnum = new int [50][50];
		int[] output = new int [100];
		int outCount = 0;
		int i=0; //no of x samples counter i.e length
		int j=0; //no of h samples counter i.e length
		int count=0; //counter to maintain circular matrix same as i 
		int vary;
		int noOfx;
		int l;
	
 	public static void main(String[] args) 
	{ 
		Overlap obj=new  Overlap();
		obj.calculating();
	}

	public void calculating()
	{
		Scanner sc = new Scanner(System.in); 
		

		System.out.println();
		System.out.println("|		PEROIDIC SIGNALING		     |");
		System.out.println();
		System.out.println("| 	 USING CIRCULAR MATRIX METHOD 		     |");
		System.out.println();

		
		System.out.println();
		System.out.print("Enter all samples leaving space of x(n): ");
		String xsample=sc.nextLine();  //taking value of x(n) as a string 
		//String xsample="3 9 1 2 3 4 5 6 3 4 5 6 7 8 9 8 7 5";
		System.out.println();
		System.out.println();
		for(String w:xsample.split("\\s")) //spliting according to space
		{  
			x[i++]=Integer.parseInt(w); // after spliting covert val of x(n) into integer array
		}
	
		System.out.print("Enter all samples leaving space of h(n): ");
		String hsample=sc.nextLine();//taking value of h(n) as a string
		//String hsample="1 2 1 1";
		System.out.println();
		System.out.println();
		for(String w:hsample.split("\\s"))//spliting according to space 
		{  
			h[j++]=Integer.parseInt(w); //after spliting covert val of h(n) into integer array
		} 
		
		
		
		System.out.print("Enter value of L between "+ j +" to "+ Math.ceil(i/3 + 1) +":- ");
		l = sc.nextInt();//taking value of L 
		System.out.println();
		System.out.println();

		int padd = l+j-1-1;
		System.out.println("Padding "+ padd);
		System.out.println();
		// For padding 0's
		
		if(j < padd) //padding 0's
		{ 
			for (int start = j ; start <= padd ; start++)
			{ 
				h[start] = 0;
			}
			//j=padd;
		}
		
		System.out.println("after padding y(n) : -");
		for (int start = 0 ; start <=padd ; start++)
		{ 
				System.out.print(h[start]+" ");
		}
		System.out.println();
		System.out.println();
		
		  
		
		noOfx = (i/l)+1; // no of x after division
		vary=padd-l+1;  //padding 
		count=0;
		System.out.println("no of x "+noOfx);
		System.out.println("number of zeros or previos no. to be padd "+vary);
		
		for(int row = 0; row <= noOfx; row++)
		{
			for(int col=0;col<= padd; col++)
			{
				if(row == 0 && col < vary)
				{
					xnum[row][col]=0;  //x1 pre zero padding  
				} 
				else if (col < vary)
				{	
					xnum[row][col]=xnum[row-1][col+vary+1];
				}
				else
				{
					if (count == i)
						xnum[row][col] =0;
					else
						xnum[row][col] =x[count++]; 
				}
			}
		}
		
		count=0;
		
		//displayOutput();
		
		for(int row = 0;row<=noOfx;row++)
		{
			for(int col=0;col<=padd;col++)
			{
				System.out.print(xnum[row][col]+" ");
			}
			System.out.println();
		}
		
		int[] temp =new int[padd+1]; 
		for(int row = 0; row <= noOfx; row++)
		{
			for(int col=0;col<= padd; col++)
			{
				temp[count++]=xnum[row][col];
			}
			displayOutput(temp,count);
			count=0;
		}
		
		System.out.println();
		System.out.println(" main aoutput :- ");
		for(int row=0;row<outCount;row++)
		{
			System.out.print(output[row]+" ");
		}

		
	}
	
	
	public  void displayOutput(int temp[],int c)
	{
		Arrays.fill(y,0);
		int temleng=temp.length;
		int[][] xmatrix = new int [temleng][temleng]; //array for circular matrix of x(n)
		

		//code to convert x(n) into circluar matrix 
		for(int row = 0; row<temleng; row++)
		{
			for(int col=0; col<temleng; col++)
			{
				if(temleng!=c)
				{
					xmatrix[col][row]=temp[c++];
					//c=0;
				}
				else
				{
					//xmatrix[col][row]=temp[c++];
					if(temleng== c || c >temleng)
					{
						c=0;
					}
					xmatrix[col][row]=temp[c++];
				}
			}
			c = temleng-row-1;
		}

		System.out.println();
		
		//calculating value of y(n)
		for(int row =0;row<temleng;row++)
		{
			for(int col=0;col<temleng;col++)
			{
				y[row]+=xmatrix[row][col]*h[col];
			}	
		}

		//Printing matrix circular formuale with values circularMatrix(x(n)) * h(n) = y(n)
		for(int row =0;row<temleng;row++)
		{
			System.out.print("| ");
			for(int col=0;col<temleng;col++)
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
        String answer="{ ";
        for(int row =0;row<temleng;row++)
        {
            answer+=y[row]+" ";
            if(row >= vary)
            {
				output[outCount++]=y[row];
			}
        }
		System.out.print(answer +" }");
		System.out.println();
		System.out.println();
		
	}
}

