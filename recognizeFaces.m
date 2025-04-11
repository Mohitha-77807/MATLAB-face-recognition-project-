%%% recognizeFaces.m
function [names, scores] = recognizeFaces(faces, knownFaces, params)
    % Recognize faces using cosine similarity
    names = cell(length(faces),1);
    scores = zeros(length(faces),1);
    
    for i = 1:length(faces)
        testFeatures = extractFeatures(faces{i}, params);
        
        % Compare with known faces
        bestScore = 0;
        bestMatch = 'Unknown';
        for j = 1:length(knownFaces)
            similarity = cosineSimilarity(...
                testFeatures, knownFaces(j).features);
            
            if similarity > bestScore && similarity > params.threshold
                bestScore = similarity;
                bestMatch = knownFaces(j).name;
            end
        end
        
        names{i} = bestMatch;
        scores(i) = bestScore;
    end
end
