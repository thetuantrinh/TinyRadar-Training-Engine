import torch
import torch.nn as nn

class CNNModel(nn.Module):
    """
    PyTorch implementation of the CNN model specified in Table II.
    
    Expected shape progression:
    - Input: [Batch, 8, 20, 40]
    - Conv2D-1: [Batch, 16, 20, 20]
    - Conv2D-2: [Batch, 32, 9, 9]
    - Conv2D-3: [Batch, 64, 4, 4]
    - MaxPooling2D: [Batch, 64, 2, 2]
    - Flatten: [Batch, 256]
    - Dropout: [Batch, 256]
    - Dense/Softmax: [Batch, 10]
    """
    def __init__(self):
        super().__init__()
        
        # Conv2D - 1: Conv (3x3, Filters (16)), Stride (1, 2), BatchNorm, ReLU
        # Output shape: 20x20x16.
        # Height: input 20, output 20, stride 1 -> padding 1
        # Width: input 40, output 20, stride 2 -> padding 1
        self.conv1 = nn.Conv2d(8, 16, kernel_size=3, stride=(1, 2), padding=(1, 1))
        self.bn1 = nn.BatchNorm2d(16)
        self.relu1 = nn.ReLU()
        
        # Conv2D - 2: Conv (3x3, Filters (32)), Stride (2, 2), BatchNorm, ReLU
        # Output shape: 9x9x32.
        # Stride 2, padding 0 (valid)
        self.conv2 = nn.Conv2d(16, 32, kernel_size=3, stride=(2, 2), padding=0)
        self.bn2 = nn.BatchNorm2d(32)
        self.relu2 = nn.ReLU()
        
        # Conv2D - 3: Conv (3x3, Filters (64)), Stride (2, 2), BatchNorm, ReLU
        # Output shape: 4x4x64.
        # Stride 2, padding 0 (valid)
        self.conv3 = nn.Conv2d(32, 64, kernel_size=3, stride=(2, 2), padding=0)
        self.bn3 = nn.BatchNorm2d(64)
        self.relu3 = nn.ReLU()
        
        # MaxPooling2D: Pool (2x2), ReLU
        # Output shape: 2x2x64.
        # Stride 2
        self.pool = nn.MaxPool2d(kernel_size=2, stride=2)
        self.pool_relu = nn.ReLU()
        
        # Flatten layer
        self.flatten = nn.Flatten(start_dim=1)
        
        # Dropout: 15% rate
        self.dropout = nn.Dropout(p=0.15)
        
        # Dense: Output shape 1x10, Softmax
        self.fc = nn.Linear(256, 10)
        self.softmax = nn.Softmax(dim=-1)

    def forward(self, x):
        # 1. Conv2D - 1
        x = self.conv1(x)
        x = self.bn1(x)
        x = self.relu1(x)
        
        # 2. Conv2D - 2
        x = self.conv2(x)
        x = self.bn2(x)
        x = self.relu2(x)
        
        # 3. Conv2D - 3
        x = self.conv3(x)
        x = self.bn3(x)
        x = self.relu3(x)
        
        # 4. MaxPooling2D
        x = self.pool(x)
        x = self.pool_relu(x)
        
        # 5. Flatten
        x = self.flatten(x)
        
        # 6. Dropout
        x = self.dropout(x)
        
        # 7. Dense & Softmax
        x = self.fc(x)
        x = self.softmax(x)
        
        return x
