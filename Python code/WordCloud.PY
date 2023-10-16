# Prolog - Auto Generated #
import os, uuid, matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot
import pandas

import sys
sys.tracebacklimit = 0

os.chdir(u'C:/Users/user/PythonEditorWrapper_9b94dd15-b307-45e3-8cd9-ed55436eeb0b')
dataset = pandas.read_csv('input_df_56dad058-7384-4263-9840-f5aed74e340c.csv')

matplotlib.pyplot.figure(figsize=(5.55555555555556,4.16666666666667), dpi=72)
matplotlib.pyplot.show = lambda args=None,kw=None: matplotlib.pyplot.savefig(str(uuid.uuid1()))
# Original Script. Please update your script content here and once completed copy below section back to the original editing window #
# The following code to create a dataframe and remove duplicated rows is always executed and acts as a preamble for your script: 

# dataset = pandas.DataFrame(Product Name)
# dataset = dataset.drop_duplicates()

# Paste or type your script code here:
from wordcloud import WordCloud
import matplotlib.pyplot as plt

# Combine all product names into a single string
text = " ".join(product for product in dataset['Product Name'])

# Create a WordCloud object and generate the word cloud
wordcloud = WordCloud(width=800, height=400, background_color='white', max_words=40).generate(text)

# Display the word cloud using Matplotlib
plt.figure(figsize=(16, 8))
plt.imshow(wordcloud, interpolation='bilinear')
plt.axis('off')
plt.title('Products offered', fontsize=36)
plt.show()

# Epilog - Auto Generated #
os.chdir(u'C:/Users/user/PythonEditorWrapper_9b94dd15-b307-45e3-8cd9-ed55436eeb0b')
