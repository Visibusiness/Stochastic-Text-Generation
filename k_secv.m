function B = k_secv (A, k)

  n = length(A);
  B = cell(n - k, 1);
  for idx = 1:n - k
    B{idx} = strjoin(A(idx:idx + k - 1), ' ');
  end
endfunction