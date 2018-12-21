def LongestIncreasingSequence(arr)

  # code goes here
  subsequence, results = [], []
    (0..arr.length-2).each do |i|
        subsequence << arr[i+1] if arr[i+1] > arr[i]
    end
    results << subsequence
  results

end

p LongestIncreasingSequence([10, 22, 9, 33, 21, 50, 41, 60, 22, 68, 90])
