# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.
def matrix_check_sum(matrix)
  i = 0

  while i < matrix.length
    y = 0
    r_total = 0
    c_total = 0

    while y < matrix[i].length
      r_total += matrix[i][y]
      y += 1
    end

    y = 0
    while y < matrix.length
      c_total += matrix[y][i]
      y += 1
    end

    if r_total == c_total
      i += 1
    else
      return false
    end
  end

  return true
end
