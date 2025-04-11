%%% detectFaces.m
function [faces, boxes] = detectFaces(img, params)
    % Detect faces using Viola-Jones algorithm
    detector = vision.CascadeObjectDetector(...
        'MinSize', params.minFaceSize,...
        'MergeThreshold', 4);
    
    boxes = detector(img);
    faces = cell(size(boxes,1),1);
    
    % Extract face regions
    for i = 1:size(boxes,1)
        faces{i} = imcrop(img, boxes(i,:));
    end
end
