FROM python:3.9

ADD app.py .

# Pytorch for gpu
RUN pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116

# # Pytorch for cpu
# RUN pip3 install torch torchvision torchaudio

RUN pip install numpy pandas matplotlib scipy tabulate

RUN pip install scikit-learn

RUN pip install nltk

RUN pip install huggingface_hub transformers 

RUN pip install flair

RUN pip install -U sentence-transformers

RUN pip install vectorai

RUN pip install openai

CMD ["python", "./app.py"]