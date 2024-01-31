def insertion_sort(arr):
    comparisons = 0
    swaps = 0

    for i in range(1, len(arr)):
        key = arr[i]
        j = i - 1
        comparisons += 1

        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
            swaps += 1

        arr[j + 1] = key

    return comparisons, swaps

# Example usage:
arr = [12, 11, 13, 5, 6]
comparisons, swaps = insertion_sort(arr)
print("Sorted array:", arr)
print("Number of comparisons:", comparisons)
print("Number of swaps:", swaps)
