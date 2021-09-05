function [vowel_order, target] = get_vowel_order()
%     arguments
%         target 
    % List of targets and distractors
    possible_distractors = ["AE", "AH", "EE", "EH", "IH", "OO", "UH"];
    possible_targets = ["IH", "OO", "UH"];

    % Randomly select target
%     if targ
    target = possible_targets(randi(length(possible_targets), 1));

    % Remove target from list of distractors
    possible_distractors(strcmp(possible_distractors, target)) = [];

    % Pick 16 distractors
    distractors = possible_distractors(randi(length(possible_distractors), 1, 16));

    % Replace 4 random distractors with the target
    distractors(datasample([1:16], 4)) = target;

    % Generate filenames
    vowel_order = distractors + ".wav";
end
