function [dout, vout, acc_end, acc_count, acc_count_pps, xdata, xvalid, xeof] = run_x_vacc_test()

    baselines_per_channel = 20;
    valids_per_channel = 11;
    channels_per_dump = 4096/8;
    dumps_per_acc = 10;
    n_accs = 4;

    din = zeros(baselines_per_channel, channels_per_dump, dumps_per_acc, n_accs);
    vin = zeros(baselines_per_channel, channels_per_dump, dumps_per_acc, n_accs);

    baseline_idx = 1;
    din(baseline_idx, 1:channels_per_dump, 1, 1) = 1:channels_per_dump;
    din(baseline_idx, 1:channels_per_dump, 1, 3) = channels_per_dump:-1:1;
    vin(1:valids_per_channel,:,:,:) = 1;
    
    ws_data_in.time=(0:numel(din)-1)';
    ws_data_in.signals.values=reshape(din,[],1);

    ws_valid_in.time=(0:numel(vin)-1)';
    ws_valid_in.signals.values=reshape(vin,[],1);

    ws_dumps_per_acc_in.time=0;
    ws_dumps_per_acc_in.signals.values=dumps_per_acc;

    ws = get_param('x_vacc_test', 'ModelWorkspace');
    ws.assignin('ws_data_in', ws_data_in);
    ws.assignin('ws_valid_in', ws_valid_in);
    ws.assignin('ws_dumps_per_acc_in', ws_dumps_per_acc_in);
    
    simout = sim('x_vacc_test', 'ReturnWorkspaceOutputs', 'on');
    
    dout          = simout.get('dout');
    vout          = simout.get('vout');
    acc_end       = simout.get('acc_end');
    acc_count     = simout.get('acc_count');
    acc_count_pps = simout.get('acc_count_pps');
    xdata         = simout.get('xdata');
    xvalid        = simout.get('xvalid');
    xeof          = simout.get('xeof');

    %idx=find(vout);
    %expected = [4 6 12 14 36 38 16 18 24 26 28]';
    %expected0 = [expected  ; expected+40; expected  ];
    %expected1 = [expected+1; expected+41; expected+1];

    %if all(acc0(idx) == expected0) && all(acc1(idx) == expected1)
    %    fprintf('PASS: got expected output\n');
    %else
    %    fprintf('FAIL: did not get expected output\n');
    %end
end
