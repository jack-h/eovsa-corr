function [sync_out, acc0, acc1, valid] = run_x_op_select_test()
    acc0 = -1*ones(4,80);
    acc1 = -1*ones(4,80);
    valid_in = zeros(4,80);

    acc0(4,:) = mod(0:2:159, 80);
    acc1(4,:) = mod(1:2:159, 80);
    valid_in(4,:) = 1;
    
    ws_sync_in.time=(0:numel(acc0)+2)';
    ws_sync_in.signals.values=[0;1;zeros(numel(acc0),1);0];

    ws_acc0.time=(0:numel(acc0)+2)';
    ws_acc0.signals.values=[0;0;reshape(acc0,[],1);0];

    ws_acc1.time=(0:numel(acc1)+2)';
    ws_acc1.signals.values=[0;0;reshape(acc1,[],1);0];

    ws_valid_in.time=(0:numel(acc1)+2)';
    ws_valid_in.signals.values=[0;0;reshape(valid_in,[],1);0];

    ws = get_param('x_op_select_test', 'ModelWorkspace');
    ws.assignin('ws_sync_in', ws_sync_in);
    ws.assignin('ws_acc0_in', ws_acc0);
    ws.assignin('ws_acc1_in', ws_acc1);
    ws.assignin('ws_valid_in', ws_valid_in);
    
    simout = sim('x_op_select_test', 'ReturnWorkspaceOutputs', 'on');
    
    sync_out = simout.get('sync_out');
    acc0     = simout.get('acc0');
    acc1     = simout.get('acc1');
    valid    = simout.get('valid');
end

function nerr = foo
    % Find sync_out pulse
    s=find(sync_out,1);
    % Clear validity flags before sync pulse
    valid_in(1:s)=0;
    % Find indexes of first 11 valid samples 
    idx=find(valid_in,11);
    % Get values for first 11+11 valid samples
    acc=reshape([acc0(idx), acc1(idx)].', [], 1);
    
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
