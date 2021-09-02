FROM nginx:alpine
ADD https://notebook.basthon.fr/basthon-notebook.tgz /tmp/basthon-notebook.tgz
ADD https://github.com/pyodide/pyodide/releases/download/0.16.1/pyodide-build-0.16.1.tar.bz2 /tmp/pyodide.tar.bz2
RUN cd /usr/share/nginx/html; tar xvzf /tmp/basthon-notebook.tgz && rm /tmp/basthon-notebook.tgz
RUN cd /usr/share/nginx/html/static/basthon-kernel/0.30.*/; tar xvjf /tmp/pyodide.tar.bz2 && rm /tmp/pyodide.tar.bz2
