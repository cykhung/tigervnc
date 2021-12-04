function vncviewer(varargin)

% https://tigervnc.org/doc/vncviewer.html


%% Define vncviewer.exe.
exe = fullfile(fileparts(mfilename('fullpath')), 'private', ...
    'tigervnc-1.12.0', 'vncviewer.exe');


%% Call vncviewer.
cmd = sprintf('"%s" %s &', exe, strjoin(varargin, ' '));
dos(cmd);


end
