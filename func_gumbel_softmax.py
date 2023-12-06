import torch
import torch.nn as nn
import torch.optim as optim
import torch.nn.functional as F

BS=  10

class ImprovedNN(nn.Module):
    def __init__(self, input_size, hidden_size, output_size, matrix_size):
        super(ImprovedNN, self).__init__()
        self.fc1 = nn.Linear(input_size, hidden_size)
        self.relu = nn.ReLU()
        self.fc2 = nn.Linear(hidden_size, output_size)
        self.matrix_size = matrix_size
        value_M = torch.eye(output_size) # code book
        self.matrix = nn.Parameter(value_M)

    def forward(self, x):
        x = self.fc1(x)
        x = self.relu(x)
        x = self.fc2(x)

        one_hot = F.gumbel_softmax(x, tau=1.0, hard=True)
        final_variable = torch.matmul(one_hot, self.matrix)


        return final_variable, one_hot

input_size = 5
hidden_size = 128
output_size = 5
matrix_size = 5
learning_rate = 0.01
epochs = 10000000

# simple NN
model = ImprovedNN(input_size, hidden_size, output_size, matrix_size)

criterion = nn.L1Loss()
optimizer = optim.SGD(model.parameters(), lr=learning_rate)

inputs = torch.randn(BS, input_size) # random
labels = torch.zeros(BS, matrix_size) # 1st col = 100
labels[:,0] = 100
for epoch in range(epochs):
    outputs, oh = model(inputs)
    loss = criterion(outputs, labels)
    optimizer.zero_grad()
    loss.backward()
    optimizer.step()
    print(f'Epoch [{epoch + 1}/{epochs}], Loss: {loss.item()}')
    print(oh)
    print(labels)
