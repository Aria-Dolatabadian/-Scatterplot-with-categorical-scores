import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Read data from the CSV file
data = pd.read_csv('data.csv')

# Define genotypes and color palette
genotypes = ['Genotype' + str(i) for i in range(1, 101)]
colors = {'Resistant': 'green', 'Intermediate': 'orange', 'Susceptible': 'red'}

# Plot a categorical scatter plot with mapped colors
sns.scatterplot(x='Genotype', y='Score', hue='Status', data=data, palette=colors, s=100)

# Set plot title and axis labels
plt.title('Genotype Scores')
plt.xlabel('Genotype')
plt.ylabel('Score')
plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left')
xticks = [i for i in range(0, 100, 10)]
plt.xticks(xticks, [genotypes[i] for i in xticks], rotation=90)
# Rotate x-axis labels for better readability
plt.xticks(rotation=90)

# Show plot
plt.show()
