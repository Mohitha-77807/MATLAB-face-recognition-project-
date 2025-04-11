%%% main.m
% Main script for face recognition system
clc; clear; close all;

% Add paths
addpath('data');
addpath('results');

% Initialize system parameters
params.threshold = 0.6;       % Similarity threshold
params.minFaceSize = [50 50]; % Minimum face size for detection
params.modelName = 'alexnet'; % Deep learning model

% Load known faces database
knownFaces = loadKnownFaces('data/known_faces', params);

% Process test image
testImage = imread('data/test_images/group.jpg');
[detectedFaces, boxes] = detectFaces(testImage, params);

% Recognize faces
[recognizedNames, scores] = recognizeFaces(detectedFaces, knownFaces, params);

% Visualize results
resultImage = visualizeResults(testImage, boxes, recognizedNames, scores);

% Save output
imwrite(resultImage, 'results/annotated_group.jpg');
imshow(resultImage);
