
function xeng_core_config(this_block)

  % Revision History:
  %
  %   08-Nov-2013  (15:02 hours):
  %     Original code was machine generated by Xilinx's System Generator after parsing
  %     /home/observer/projects/eovsa-corr/src/xeng_core.vhd
  %
  %

  this_block.setTopLevelLanguage('VHDL');

  this_block.setEntityName('xeng_core');

  % System Generator has to assume that your entity  has a combinational feed through; 
  %   if it  doesn't, then comment out the following line:
%   this_block.tagAsCombinational;

  this_block.addSimulinkInport('sync_in');
  this_block.addSimulinkInport('ant');
  this_block.addSimulinkInport('window_valid');
  this_block.addSimulinkInport('mcnt_in');

  this_block.addSimulinkOutport('sync_out');
  this_block.addSimulinkOutport('acc');
  this_block.addSimulinkOutport('valid');
  this_block.addSimulinkOutport('mcnt_out');

  acc_port = this_block.port('acc');
  acc_port.setType('UFix_64_0');
  mcnt_out_port = this_block.port('mcnt_out');
  mcnt_out_port.setType('UFix_48_0');
  sync_out_port = this_block.port('sync_out');
  sync_out_port.setType('Bool');
  sync_out_port.useHDLVector(false);
  valid_port = this_block.port('valid');
  valid_port.setType('Bool');
  valid_port.useHDLVector(false);

  % -----------------------------
  if (this_block.inputTypesKnown)
    % do input type checking, dynamic output type and generic setup in this code block.

    if (this_block.port('ant').width ~= 16);
      this_block.setError('Input data type for port "ant" must have width=16.');
    end

    if (this_block.port('mcnt_in').width ~= 48);
      this_block.setError('Input data type for port "mcnt_in" must have width=48.');
    end

    if (this_block.port('sync_in').width ~= 1);
      this_block.setError('Input data type for port "sync_in" must have width=1.');
    end

    this_block.port('sync_in').useHDLVector(false);

    if (this_block.port('window_valid').width ~= 1);
      this_block.setError('Input data type for port "window_valid" must have width=1.');
    end

    this_block.port('window_valid').useHDLVector(false);

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
  this_block.addFile('xeng_core.vhd');

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
