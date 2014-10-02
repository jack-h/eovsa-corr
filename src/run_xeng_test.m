function [x, y, out] = run_xeng_test()
    antx = zeros(128,4);
    anty = zeros(128,4);
    antx(1,:) = complex(round(rand(1,4)*14)-7, round(rand(1,4)*14)-7);
    anty(1,:) = complex(round(rand(1,4)*14)-7, round(rand(1,4)*14)-7);
    x = antx(1,:);
    y = anty(1,:);
    
    ws_sync_in.time=(0:numel(antx)+2)';
    ws_sync_in.signals.values=[0;1;zeros(numel(antx),1);0];

    ws_antx.time=(0:numel(antx)+2)';
    ws_antx.signals.values=[0;0;reshape(antx,[],1);0];

    ws_anty.time=(0:numel(anty)+2)';
    ws_anty.signals.values=[0;0;reshape(anty,[],1);0];

    ws = get_param('xeng_test', 'ModelWorkspace');
    ws.assignin('ws_sync_in', ws_sync_in);
    ws.assignin('ws_antx', ws_antx);
    ws.assignin('ws_anty', ws_anty);
    
    simout = sim('xeng_test', 'ReturnWorkspaceOutputs', 'on');
    
    sync_out = simout.get('sync_out');
    acc0     = simout.get('acc0');
    acc1     = simout.get('acc1');
    valid    = simout.get('valid');
    
    % Find sync_out pulse
    s=find(sync_out,1);
    if length(s) == 0
      fprintf('Error: no sync_out pulse detected.\nIs simulation stop time large enough?\n');
      out=[];
      return
    end

    % Clear validity flags before sync pulse
    valid(1:s)=0;
    % Find indexes of first 20 valid samples 
    idx=find(valid,20);
    % Get values for first 20 valid samples
    out=reshape([acc0(idx), acc1(idx)].', [], 1);
    
    nerr = 0;
    
    % MIRIAD Baseline 1-1
    nerr = nerr + xeng_check(out,  1, x(1), x(1));
    nerr = nerr + xeng_check(out,  2, y(1), y(1));
    nerr = nerr + xeng_check(out,  3, x(1), y(1));
    nerr = nerr + xeng_check(out,  4, y(1), x(1));
    
    % MIRIAD Baseline 1-2
    nerr = nerr + xeng_check(out,  5, x(1), x(2));
    nerr = nerr + xeng_check(out,  6, y(1), y(2));
    nerr = nerr + xeng_check(out,  7, x(1), y(2));
    nerr = nerr + xeng_check(out,  8, y(1), x(2));
    
    % MIRIAD Baseline 2-2
    nerr = nerr + xeng_check(out,  9, x(2), x(2));
    nerr = nerr + xeng_check(out, 10, y(2), y(2));
    nerr = nerr + xeng_check(out, 11, x(2), y(2));
    nerr = nerr + xeng_check(out, 12, y(2), x(2));

    % MIRIAD Baseline 1-3
    nerr = nerr + xeng_check(out, 13, x(1), x(3));
    nerr = nerr + xeng_check(out, 14, y(1), y(3));
    nerr = nerr + xeng_check(out, 15, x(1), y(3));
    nerr = nerr + xeng_check(out, 16, y(1), x(3));

    % MIRIAD Baseline 2-3
    nerr = nerr + xeng_check(out, 17, x(2), x(3));
    nerr = nerr + xeng_check(out, 18, y(2), y(3));
    nerr = nerr + xeng_check(out, 19, x(2), y(3));
    nerr = nerr + xeng_check(out, 20, y(2), x(3));

    % MIRIAD Baseline 3-3
    nerr = nerr + xeng_check(out, 21, x(3), x(3));
    nerr = nerr + xeng_check(out, 22, y(3), y(3));
    nerr = nerr + xeng_check(out, 23, x(3), y(3));
    nerr = nerr + xeng_check(out, 24, y(3), x(3));

    % MIRIAD Baseline 2-4
    nerr = nerr + xeng_check(out, 25, x(2), x(4));
    nerr = nerr + xeng_check(out, 26, y(2), y(4));
    nerr = nerr + xeng_check(out, 27, x(2), y(4));
    nerr = nerr + xeng_check(out, 28, y(2), x(4));

    % MIRIAD Baseline 3-4
    nerr = nerr + xeng_check(out, 29, x(3), x(4));
    nerr = nerr + xeng_check(out, 30, y(3), y(4));
    nerr = nerr + xeng_check(out, 31, x(3), y(4));
    nerr = nerr + xeng_check(out, 32, y(3), x(4));

    % MIRIAD Baseline 4-4
    nerr = nerr + xeng_check(out, 33, x(4), x(4));
    nerr = nerr + xeng_check(out, 34, y(4), y(4));
    nerr = nerr + xeng_check(out, 35, x(4), y(4));
    nerr = nerr + xeng_check(out, 36, y(4), x(4));

    % MIRIAD Baseline 1-4
    nerr = nerr + xeng_check(out, 37, x(1), x(4));
    nerr = nerr + xeng_check(out, 38, y(1), y(4));
    nerr = nerr + xeng_check(out, 39, x(1), y(4));
    nerr = nerr + xeng_check(out, 40, y(1), x(4));

    fprintf('found %d errors\n', nerr);
end

function err = xeng_check(out, idx, a, b)
    expected = a * conj(b);
    err = 0;
    if out(idx) ~= expected
        fprintf('expected output %d to be %d%+di, but got %d%+di\n', ...
            idx, real(expected), imag(expected), ...
                 real(out(idx)), imag(out(idx)));
        err = 1;
    end
end
