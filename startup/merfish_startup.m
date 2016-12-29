%% Startup Script
% -------------------------------------------------------------------------
% This script initializes the matlab workspace and defines useful paths and
% global variables for STORM analysis and MERFISH analysis
% If you already have a startup script add the following code to this
% script. To be functional, there are specific paths that must be set based
% on the local machine.  
% -------------------------------------------------------------------------
%% Clear Existing Workspace
close all;
clear all;
clc;
display('------------------------------------------------------------------');
warning off all
restoredefaultpath; % Clear previous paths
warning on all
addpath('C:\Users\Jeff.Morgan0\Documents\MATLAB');   % MATLAB directory
addpath('C:\Users\Jeff.Morgan0\Dropbox\ZhuangLab\MERFISH_Public\MERFISH_analysis\startup'); % Location of any startup script

%% Define matlab-storm Variables and Paths:
global insightExe; % System executable command for InsightM
global scratchPath; % place for matlab-storm to save temporary files
global pythonPath; % path to Python 2.7
global matlabStormPath; % path to matlab-storm downloaded from https://github.com/ZhuangLab/matlab-storm
global stormAnalysisPath; % path to storm-analysis downloaded from https://github.com/ZhuangLab/storm-analysis

scratchPath = 'C:\Users\Jeff.Morgan0\Documents\Scratch\';
pythonPath = 'C:\Python27\'; 
matlabStormPath = 'C:\Users\Jeff.Morgan0\Dropbox\ZhuangLab\Coding\Matlab\matlab-storm\';  
stormAnalysisPath= 'C:\Users\Jeff.Morgan0\Dropbox\ZhuangLab\Coding\Python\storm-analysis\';  
insightExe = 'C:\Utilities\STORMAnalysis\Insight3\InsightM.exe';

% Call the matlab-storm startup script
addpath([matlabStormPath,'Startup\']);
matlabstorm_startup;    % Configure matlab-storm


%% Required only for older probe design pipeline

    % Add path to legacy blast functions
    legacyBLASTPath = 'C:\Users\Jeff.Morgan0\Dropbox\ZhuangLab\Coding\Library\LegacyBLAST'; % Path to the legacy BLAST functions
            %%% NOTE: Do not place these functions in a path that has spaces,
            %%% e.g. "C:\Users\Program Files\..." OligoArray will not be able
            %%% to find blast functions. 
		
    % Add path to OligoArray2.1: This software can be downloaded from http://berry.engin.umich.edu/oligoarray2_1
    oligoArrayExe = 'C:\Users\Jeff.Morgan0\Dropbox\ZhuangLab\Coding\Library\OligoArray\OligoArray2.jar'; % Path to the java executable for OligoArray2.1
        % Unnecessary for the new probe design pipeline
	 
    % Add path to OligoArrayAux: This software can be downloaded from http://unafold.rna.albany.edu/?q=DINAMelt/OligoArrayAux
    oligoArrayAuxPath = 'C:\"Program Files"\OligoArrayAux\bin'; % This path is fixed. OligoArrayAux must be placed here.
        % Unnecessary for the new probe design pipeline
	
%% Add merfish_analysis: downloaded from https://github.com/ZhuangLab/MERFISH_analysis
display('Adding MERFISH_analysis');
MERFISHAnalysisPath = ['C:\Users\Jeff.Morgan0\Dropbox\ZhuangLab\MERFISH_Public\MERFISH_analysis\']; % Path the folder in which you installed this software package
addpath(genpath(MERFISHAnalysisPath), '-begin');
display(['    ' MERFISHAnalysisPath]);
display(['      And all enclosed paths']);

%% Add export_fig
addpath(['C:\Users\Jeff.Morgan0\Dropbox\ZhuangLab\Coding\Matlab\matlab-functions\FromGitHub\export_fig\']); % Path to export_fig
