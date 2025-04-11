%%% visualizeResults.m
function resultImg = visualizeResults(img, boxes, names, scores)
    % Annotate image with recognition results
    resultImg = img;
    
    for i = 1:size(boxes,1)
        % Draw bounding box
        resultImg = insertShape(resultImg, 'Rectangle', boxes(i,:),...
            'LineWidth', 3, 'Color', 'green');
        
        % Add label
        labelText = sprintf('%s (%.2f)', names{i}, scores(i));
        resultImg = insertObjectAnnotation(resultImg,...
            'rectangle', boxes(i,:), labelText,...
            'FontSize', 18, 'TextColor','white');
    end
end
