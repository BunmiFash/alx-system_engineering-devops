#include "search_algos.h"

/**
 * linear_search - A function that seraches for a value
 * in an array of integers using the linear search algorithm
 *
 * @array: Pointer to the first element of the array
 *
 * @size: number of elements in the array
 *
 * @value: value to search for
 *
 * Return: First index where the array is located
 * or -1 if value not in array or NULL
 */

int linear_search(int *array, size_t size, int value)
{
	size_t i;

	if (array == NULL)
	{
		return (-1);
	}

	for (i = 0; i < size; i++)
	{
		printf("Value checked array[%ld] = [%d]", i, array[i]);
		printf("\n");
		if (array[i] == value)
		{
			return (i);
		}
	}
	return (-1);
}
