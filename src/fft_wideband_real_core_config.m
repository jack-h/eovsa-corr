
function fft_wideband_real_core_config(this_block)

  % Revision History:
  %
  %   20-Nov-2013  (12:44 hours):
  %     Original code was machine generated by Xilinx's System Generator after parsing
  %     /home/observer/projects/eovsa-corr/src/fft_wideband_real_core.vhd
  %
  %

  this_block.setTopLevelLanguage('VHDL');

  this_block.setEntityName('fft_wideband_real_core');

  % System Generator has to assume that your entity  has a combinational feed through; 
  %   if it  doesn't, then comment out the following line:
%  this_block.tagAsCombinational;

  this_block.addSimulinkInport('sync');
  this_block.addSimulinkInport('shift');
  this_block.addSimulinkInport('in00');
  this_block.addSimulinkInport('in01');
  this_block.addSimulinkInport('in02');
  this_block.addSimulinkInport('in03');
  this_block.addSimulinkInport('in10');
  this_block.addSimulinkInport('in11');
  this_block.addSimulinkInport('in12');
  this_block.addSimulinkInport('in13');
  this_block.addSimulinkInport('in20');
  this_block.addSimulinkInport('in21');
  this_block.addSimulinkInport('in22');
  this_block.addSimulinkInport('in23');
  this_block.addSimulinkInport('in30');
  this_block.addSimulinkInport('in31');
  this_block.addSimulinkInport('in32');
  this_block.addSimulinkInport('in33');
 
  this_block.addSimulinkOutport('sync_out');
  this_block.addSimulinkOutport('out00');
  this_block.addSimulinkOutport('out01');
  this_block.addSimulinkOutport('out10');
  this_block.addSimulinkOutport('out11');
  this_block.addSimulinkOutport('out20');
  this_block.addSimulinkOutport('out21');
  this_block.addSimulinkOutport('out30');
  this_block.addSimulinkOutport('out31');
  this_block.addSimulinkOutport('oflow');
 
  oflow_port = this_block.port('oflow');
  oflow_port.setType('UFix_4_0');
  out00_port = this_block.port('out00');
  out00_port.setType('UFix_36_0');
  out01_port = this_block.port('out01');
  out01_port.setType('UFix_36_0');
  out10_port = this_block.port('out10');
  out10_port.setType('UFix_36_0');
  out11_port = this_block.port('out11');
  out11_port.setType('UFix_36_0');
  out20_port = this_block.port('out20');
  out20_port.setType('UFix_36_0');
  out21_port = this_block.port('out21');
  out21_port.setType('UFix_36_0');
  out30_port = this_block.port('out30');
  out30_port.setType('UFix_36_0');
  out31_port = this_block.port('out31');
  out31_port.setType('UFix_36_0');
  sync_out_port = this_block.port('sync_out');
  sync_out_port.setType('Bool');
  sync_out_port.useHDLVector(false);

  % -----------------------------
  if (this_block.inputTypesKnown)
    % do input type checking, dynamic output type and generic setup in this code block.

    if (this_block.port('in00').width ~= 12);
      this_block.setError('Input data type for port "in00" must have width=18.');
    end

    if (this_block.port('in01').width ~= 12);
      this_block.setError('Input data type for port "in01" must have width=18.');
    end

    if (this_block.port('in02').width ~= 12);
      this_block.setError('Input data type for port "in02" must have width=18.');
    end

    if (this_block.port('in03').width ~= 12);
      this_block.setError('Input data type for port "in03" must have width=18.');
    end

    if (this_block.port('in10').width ~= 12);
      this_block.setError('Input data type for port "in10" must have width=18.');
    end

    if (this_block.port('in11').width ~= 12);
      this_block.setError('Input data type for port "in11" must have width=18.');
    end

    if (this_block.port('in12').width ~= 12);
      this_block.setError('Input data type for port "in12" must have width=18.');
    end

    if (this_block.port('in13').width ~= 12);
      this_block.setError('Input data type for port "in13" must have width=18.');
    end

    if (this_block.port('in20').width ~= 12);
      this_block.setError('Input data type for port "in20" must have width=18.');
    end

    if (this_block.port('in21').width ~= 12);
      this_block.setError('Input data type for port "in21" must have width=18.');
    end

    if (this_block.port('in22').width ~= 12);
      this_block.setError('Input data type for port "in22" must have width=18.');
    end

    if (this_block.port('in23').width ~= 12);
      this_block.setError('Input data type for port "in23" must have width=18.');
    end

    if (this_block.port('in30').width ~= 12);
      this_block.setError('Input data type for port "in30" must have width=18.');
    end

    if (this_block.port('in31').width ~= 12);
      this_block.setError('Input data type for port "in31" must have width=18.');
    end

    if (this_block.port('in32').width ~= 12);
      this_block.setError('Input data type for port "in32" must have width=18.');
    end

    if (this_block.port('in33').width ~= 12);
      this_block.setError('Input data type for port "in33" must have width=18.');
    end

    if (this_block.port('shift').width ~= 16);
      this_block.setError('Input data type for port "shift" must have width=16.');
    end

    if (this_block.port('sync').width ~= 1);
      this_block.setError('Input data type for port "sync" must have width=1.');
    end

    this_block.port('sync').useHDLVector(false);

  end  % if(inputTypesKnown)
  % -----------------------------

  % -----------------------------
   if (this_block.inputRatesKnown)
     setup_as_single_rate(this_block,'clk_1','ce_1')
   end  % if(inputRatesKnown)
  % -----------------------------

    % (!) Set the inout port rate to be the same as the first input 
    %     rate. Change the following code if this is untrue.
    uniqueInputRates = unique(this_block.getInputRates);


  % Add addtional source files as needed.
  %  |-------------
  %  | Add files in the order in which they should be compiled.
  %  | If two files "a.vhd" and "b.vhd" contain the entities
  %  | entity_a and entity_b, and entity_a contains a
  %  | component of type entity_b, the correct sequence of
  %  | addFile() calls would be:
  %  |    this_block.addFile('b.vhd');
  %  |    this_block.addFile('a.vhd');
  %  |-------------

  %    this_block.addFile('');
  %    this_block.addFile('');
  this_block.addFile('fft_wideband_real_core.vhd');

return;


% ------------------------------------------------------------

function setup_as_single_rate(block,clkname,cename) 
  inputRates = block.inputRates; 
  uniqueInputRates = unique(inputRates); 
  if (length(uniqueInputRates)==1 & uniqueInputRates(1)==Inf) 
    block.addError('The inputs to this block cannot all be constant.'); 
    return; 
  end 
  if (uniqueInputRates(end) == Inf) 
     hasConstantInput = true; 
     uniqueInputRates = uniqueInputRates(1:end-1); 
  end 
  if (length(uniqueInputRates) ~= 1) 
    block.addError('The inputs to this block must run at a single rate.'); 
    return; 
  end 
  theInputRate = uniqueInputRates(1); 
  for i = 1:block.numSimulinkOutports 
     block.outport(i).setRate(theInputRate); 
  end 
  block.addClkCEPair(clkname,cename,theInputRate); 
  return; 

% ------------------------------------------------------------

