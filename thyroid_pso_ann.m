% Implementation by DR. Hosseinpoor
% Load data from Excel file
filename = '/mnt/data/Thyroid-dataset.csv';
data = readtable(filename);

% Convert data to numerical array (depending on file structure)
data = table2array(data);

% Separate features and labels
X = data(:, 1:end-1); % Features
y = data(:, end); % Labels

% Normalize data
X = normalize(X);

% Split data into training and testing sets
trainRatio = 0.7;
testRatio = 1 - trainRatio;
[trainInd, ~, testInd] = dividerand(size(X, 1), trainRatio, 0, testRatio);
X_train = X(trainInd, :);
y_train = y(trainInd);
X_test = X(testInd, :);
y_test = y(testInd);

% Neural network settings
numInputs = size(X, 2);
numHidden = 10; % Number of hidden layer neurons
numOutputs = numel(unique(y));

% PSO algorithm settings
numParticles = 30;
maxIter = 100;
w = 0.7; % Inertia weight
c1 = 1.5; % Cognitive coefficient
c2 = 1.5; % Social coefficient

% Initialize particles
numWeights = (numInputs * numHidden) + (numHidden * numOutputs) + numHidden + numOutputs;
particles = rand(numParticles, numWeights) * 2 - 1;
velocities = zeros(numParticles, numWeights);
bestParticles = particles;
fitness = inf(numParticles, 1);
[globalBestFitness, bestIdx] = min(fitness);
globalBest = bestParticles(bestIdx, :);

% Run PSO algorithm
for iter = 1:maxIter
    for i = 1:numParticles
        % Update neural network with current particle weights
        weights = particles(i, :);
        net = feedforwardnet(numHidden);
        net = configure(net, X_train', y_train');
        net.IW{1,1} = reshape(weights(1:numInputs*numHidden), numHidden, numInputs);
        net.b{1} = reshape(weights(numInputs*numHidden+1:numInputs*numHidden+numHidden), numHidden, 1);
        net.LW{2,1} = reshape(weights(numInputs*numHidden+numHidden+1:end-numOutputs), numOutputs, numHidden);
        net.b{2} = reshape(weights(end-numOutputs+1:end), numOutputs, 1);
        
        % Compute error
        y_pred = net(X_train');
        error = mean((y_pred' - y_train).^2);
        
        % Update personal best position
        if error < fitness(i)
            fitness(i) = error;
            bestParticles(i, :) = weights;
        end
        
        % Update global best position
        if error < globalBestFitness
            globalBestFitness = error;
            globalBest = weights;
        end
    end
    
    % Update velocity and position of particles
    for i = 1:numParticles
        velocities(i, :) = w * velocities(i, :) + c1 * rand * (bestParticles(i, :) - particles(i, :)) + c2 * rand * (globalBest - particles(i, :));
        particles(i, :) = particles(i, :) + velocities(i, :);
    end
end

% Evaluate optimized neural network
net.IW{1,1} = reshape(globalBest(1:numInputs*numHidden), numHidden, numInputs);
net.b{1} = reshape(globalBest(numInputs*numHidden+1:numInputs*numHidden+numHidden), numHidden, 1);
net.LW{2,1} = reshape(globalBest(numInputs*numHidden+numHidden+1:end-numOutputs), numOutputs, numHidden);
net.b{2} = reshape(globalBest(end-numOutputs+1:end), numOutputs, 1);

y_pred_test = net(X_test');
error_test = mean((y_pred_test' - y_test).^2);

fprintf('Mean Squared Error on Test Data: %f\n', error_test);
