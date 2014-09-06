function out0 = run_fft_wideband_real_core(in0)

    % Generate input signals
    sync.time=[];
    sync.signals.values=[0 1 0]';

    nsamp_in = 2^13;
    demux_in = 2^2;
    nchan_out = nsamp_in/2;
    demux_out = demux_in/2;

    nwins_in = length(in0) / nsamp_in;

    if mod(length(in0), nsamp_in) ~= 0
      error(sprintf('length of input must be multiple of %d', nsamp_in));
    end

    % Reshape in0 to
    %
    % [
    %   a b c d
    %   e f g h
    %   . . . .
    % ]
    in0 = reshape(in0, demux_in, [])';

    % Set in1, in2, in3 to all zeros
    in1 = zeros(nsamp_in/demux_in, demux_in);
    in2 = zeros(nsamp_in/demux_in, demux_in);
    in3 = zeros(nsamp_in/demux_in, demux_in);

    % Shift inputs to align with sync
    in0 = circshift(in0, 2);
    in1 = circshift(in0, 2);
    in2 = circshift(in0, 2);
    in3 = circshift(in0, 2);

    % Assign input signals in model workspace
    ws = get_param('fft_wideband_real_core', 'ModelWorkspace');
    ws.assignin('sync', sync);
    % Use eval to assign inputs
    for input=0:3
      for demux=0:3
        eval(sprintf('in%d%d.time=[];', input, demux));
        eval(sprintf('in%d%d.signals.values=in%d(:,%d);', input, demux, input, demux+1));
        eval(sprintf('ws.assignin(''in%d%d'', in%d%d);',  input, demux, input, demux));
      end
    end

    % Run simulation
    simout = sim('fft_wideband_real_core', 'ReturnWorkspaceOutputs', 'on');

    % Get simulation outputs
    sync_out = simout.get('sync_out');
    out00    = simout.get('out00');
    out01    = simout.get('out01');

    s = find(sync_out);
    idx = 1:(nwins_in*nsamp_in/demux_in);
    out0 = reshape(horzcat( ...
             out00(s+idx),  ...
             out01(s+idx)   ...
           ).', [], nwins_in);

%    s=find(sync_out);
%    valid(1:s)=0;
%    idx=find(valid,33);
%    expected = [4 6 12 14 36 38 16 18 24 26 28]';
%    expected0 = [expected  ; expected+40; expected  ];
%    expected1 = [expected+1; expected+41; expected+1];
%
%    if all(acc0(idx) == expected0) && all(acc1(idx) == expected1)
%        fprintf('PASS: got expected output\n');
%    else
%        fprintf('FAIL: did not get expected output\n');
%    end
end
