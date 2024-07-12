function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    m = length(k_secv_set);
    n = length(words_set);
    retval = zeros(m, n);
    for i = 1:m
        indices = find(strcmp(k_secv_corpus, k_secv_set{i}));
        next_words_indices = [];
        for j = 1:length(indices)
            next_words_indices = [next_words_indices, find(strcmp(corpus_words{indices(j) + k}, words_set))];
        end
        counts = zeros(1, n);
        for j = 1:length(next_words_indices)
            counts(next_words_indices(j)) += 1;
        end
        retval(i, :) = counts;
    end
end