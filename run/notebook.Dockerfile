FROM mihaiparaschiv/data-science-base:0.2.3


# The base image use scikit-learn 0.17.
RUN conda install --quiet --yes 'scikit-learn=0.18*'

RUN pip install "jupyter_dashboards==0.6.*" && \
	jupyter dashboards quick-setup --sys-prefix

RUN pip install "jupyter_declarativewidgets==0.6.*" && \
	jupyter declarativewidgets quick-setup --sys-prefix

RUN pip install "jupyter_cms==0.6.*" && \
	jupyter cms quick-setup --sys-prefix

RUN pip install "jupyter_dashboards_bundlers==0.8.*" && \
	jupyter dashboards_bundlers quick-setup --sys-prefix
