%%% extractFeatures.m
function features = extractFeatures(faceImg, params)
    % Extract deep learning features
    net = alexnet;
    inputSize = net.Layers(1).InputSize(1:2);
    
    % Preprocess image
    resizedImg = imresize(faceImg, inputSize);
    preprocessedImg = preprocessImage(resizedImg, params.modelName);
    
    % Extract features
    features = activations(net, preprocessedImg, 'fc7',...
        'OutputAs', 'rows');
end
