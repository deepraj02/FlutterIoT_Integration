#include <stdio.h>
// this is the main function to start the execution of the code
int main()
{
    printf("\n\n\t\tStudytonight - Best place to learn\n\n\n");
    int num, i;                                            // declaration of variables hare
    printf("Enter the number to find the factors of :  "); // statement to print functions
    scanf("%d", &num);
    printf("\n\n\nFactors of %d are \n\n", num);

    for (i = 1; i <= num / 2; i++)
    {
        if (num % i == 0)
            printf("\t\t\t%d\n", i);
    }

    printf("\n\n\n\n\t\t\tCoding is Fun !\n\n\n");
    return 0;
}
