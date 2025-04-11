%%% loadKnownFaces.m
function knownFaces = loadKnownFaces(dataPath, params)
    % Load and process known faces
    people = dir(fullfile(dataPath, 'person*'));
    knownFaces = struct('name', {}, 'features', {});
    
    for i = 1:length(people)
        imgPath = fullfile(people(i).folder, people(i).name);
        img = imread(imgPath);
        
        % Detect and preprocess face
        [faceImg, ~] = detectFaces(img, params);
        if ~isempty(faceImg)
            features = extractFeatures(faceImg{1}, params);
            knownFaces(end+1) = struct(...
                'name', erase(people(i).name, '.jpg'),...
                'features', features);
        end
    end
end
