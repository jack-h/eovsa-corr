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

    s=find(sync_out);
    valid(1:s)=0;
    idx=find(valid,33);
    expected = [4 6 12 14 36 38 16 18 24 26 28]';
    expected0 = [expected  ; expected+40; expected  ];
    expected1 = [expected+1; expected+41; expected+1];

    if all(acc0(idx) == expected0) && all(acc1(idx) == expected1)
        fprintf('PASS: got expected output\n');
    else
        fprintf('FAIL: did not get expected output\n');
    end
end
