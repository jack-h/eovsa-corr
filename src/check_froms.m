function check_froms(sys,search_depth)

% A script to check for From blocks with no corrensponding Gotos.
% This is a common error in designs which causes Update Diagram to fail

if nargin < 1
    sys = gcs;
    search_depth = 1;
elseif nargin < 2
    search_depth = 1;
end

GotoList = find_system(sys,'SearchDepth', search_depth, 'LookUnderMasks','on','BlockType','Goto');
FromList = find_system(sys,'SearchDepth', search_depth, 'LookUnderMasks','on','BlockType','From');

FromTagList = {}; 
for n = 1 : length(FromList)
    % get tag name
    FromTagList = [FromTagList get_param(FromList{n},'GotoTag')];
end %for

GotoTagList = {};
for n = 1 : length(GotoList)
    % get tag name
    GotoTagList = [GotoTagList get_param(GotoList{n},'GotoTag')];
end %for


OrphanFromList = {};
for n = 1 : length(FromList)
    if ~any(strcmp(GotoTagList,FromTagList{n}))
        OrphanFromList = [OrphanFromList FromList{n}];
        hilite_system(FromList{n});
    %else
    %    hilite_system(FromList{n},'none');
    end
end

DuplicateGotoList = {};
for n = 1 : length(GotoList)
    if sum(strcmp(GotoTagList,GotoTagList{n})) > 1
        DuplicateGotoList = [DuplicateGotoList GotoList{n}];
        hilite_system(GotoList{n});
    %else 
    %    hilite_system(GotoList{n},'none');
    end
end


fprintf('Orphaned From blocks:');
if length(OrphanFromList)==0
    fprintf(' None')
else
    for n = 1:length(OrphanFromList)
        fprintf('\n%s',OrphanFromList{n});
    end
end
fprintf('\n')

fprintf('Duplicate Goto blocks:')
if length(DuplicateGotoList)==0
    fprintf(' None')
else
    for n = 1:length(DuplicateGotoList)
        fprintf('\n%s',DuplicateGotoList{n})
    end
end

fprintf('\n');
