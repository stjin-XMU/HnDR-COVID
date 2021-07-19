Nets = {'protein_disease_mat85018','protein_drug_mat5278',};

for i = 1 : length(Nets)
	tic
	inputID = char(strcat('../data_mat/interaction_mat/', Nets(i), '.txt'));
	M = load(inputID);
	Sim = 1 - pdist(M, 'jaccard');
	Sim = squareform(Sim);
	Sim = Sim + eye(size(M,1));
	Sim(isnan(Sim)) = 0;
	outputID = char(strcat('../simNet/Sim_', Nets(i), '.txt'));
	dlmwrite(outputID, Sim, '\t');
	toc
end
