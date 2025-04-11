%%% cosineSimilarity.m
function similarity = cosineSimilarity(A,B)
    % Compute cosine similarity between vectors
    similarity = dot(A,B)/(norm(A)*norm(B));
end
