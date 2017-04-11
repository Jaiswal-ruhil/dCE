# {{IMG}}
# Build using: docker build -t "{{IMG}}" --rm=true --no-cache .
#
# NAME             code-integration-system:latest
# VERSION          latest

FROM  python


RUN apt update
RUN apt upgrade -y
RUN pip install cherrypy
RUN pip install pymongo
RUN pip install hypothesis
RUN pip install numpy
RUN pip install scipy
RUN pip install sympy
RUN pip install Cython
RUN pip install word2vec
RUN pip install gensim
RUN pip install sphinx
ENV PYTHONPATH $PYTHONPATH:/db_driver:/utils:/code_manager:/method-invocation:/math-model-generator:/context_switch


WORKDIR /0x4bdn
