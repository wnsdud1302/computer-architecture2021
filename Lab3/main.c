#include <stdio.h>

extern void bubblesort(int arr[], int index);
extern void sort(int arr[], int index);

//void swap(int *a, int *b){
// 	int temp;
// 	temp = *a;
// 	*a = *b;
// 	*b = temp;
// }

// void sort(int v[], int n){
// 	for(int i = 0; i < n-1; i++)
// 	for(int j = 0; j < n-1-i; j++){
// 		if(v[j] > v[j+1]) swap(&v[j+1], &v[j]);
// 	}
// }

int main()
{
	//int arr[4] = {7,3,1,2};
	int i;
		
	// printf("Array before sorting :");
	// for(i = 0; i < sizeof(arr)/sizeof(int); i++)
	// 	printf(" %d ",arr[i]);
	// printf("\n");
		
	// bubblesort(arr, 4);

	// printf("Array after sorting :");
	// for(i = 0; i < sizeof(arr)/sizeof(int); i++)
	// 	printf(" %d ",arr[i]);
	// printf("\n");

	int arr1[4] = {7,3,1,2};
		
	printf("Array before sorting :");
	for(i = 0; i < sizeof(arr1)/sizeof(int); i++)
		printf(" %d ",arr1[i]);
	printf("\n");
		
	sort(arr1, 4);

	printf("Array after sorting :");
	for(i = 0; i < sizeof(arr1)/sizeof(int); i++)
		printf(" %d ",arr1[i]);
	printf("\n");
	
	return 0;
}
