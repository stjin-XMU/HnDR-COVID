addpath(genpath('../../DNGR'));


Kstep = 3;
alpha = 0.98;

dim = 5390;
% dim = 1915;
data=load('../../simNet/Sim_protein_disease_mat85018.txt');
[m,n]=size(data);

BuildNets;                          %Build Nerual Networks
rep_Sim_protein_disease_mat85018 = DNGR(data, sae, opts, nnsize, Kstep, alpha);  %Run DNGR Algorithm

save('../../feature/rep_Sim_protein_disease_mat85018','rep_Sim_protein_disease_mat85018'); 