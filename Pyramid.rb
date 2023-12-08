def heapify(arr, n, i)
  largest = i
  left = 2 * i + 1
  right = 2 * i + 2

  if left < n && arr[left] > arr[largest]
    largest = left
  end

  if right < n && arr[right] > arr[largest]
    largest = right
  end

  if largest != i
    arr[i], arr[largest] = arr[largest], arr[i]
    heapify(arr, n, largest)
  end
end

def heap_sort(arr)
  n = arr.length

  # Будуємо max-heap (максимальну піраміду)
  (n / 2 - 1).downto(0) do |i|
    heapify(arr, n, i)
  end

  # Вилучаємо елементи з піраміди по одному та сортуємо
  (n - 1).downto(1) do |i|
    arr[0], arr[i] = arr[i], arr[0]
    heapify(arr, i, 0)
  end
end

# Приклад використання:
array = [12, 11, 13, -100, 6.2, 7]
heap_sort(array)
puts "Відсортований масив: #{array}"


