#include "search_algos.h"

/**
 * binary_search - A function that searches for a value
 * in a sorted array of integers using the Binary search algorithm
 *
 * @array: Pointer to the first element of the array
 *
 * @size: Number of elements in the array
 *
 * @value: value to search for
 *
 * Return: Index where value  is located or -1
 * if value not in array or array is NULL
 */


int binary_search(int *array, size_t size, int value)
{
	size_t first = 0;
	size_t last = size - 1;
	size_t mid;

	while (first <= last)
	{
		mid = (first + last) / 2;
		if (value > array[mid])
		{
			first = mid + 1;
		}
		else if (value < array[mid])
		{
			last = mid - 1;
		}
		else
		{
			return (mid);
		}
	}

	return (-1);

}
