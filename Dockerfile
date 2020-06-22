FROM sunilsamal/airflow:latest
RUN pip install --user psycopg2-binary
ENV AIRFLOW_HOME=/usr/local/airflow

# uncomment next 2 lines if you want to use 'docker-compose-volume-packages.yml'
# RUN mkdir /usr/local/airflow/packages
# COPY ./packages.pth /usr/local/lib/python3.7/site-packages

COPY ./airflow.cfg /usr/local/airflow/airflow.cfg

# RUN sudo adduser dockuser
# RUN chown dockuser:dockuser -R /usr/local/airflow
# USER dockuser

#RUN sudo addgroup --system user && sudo adduser --system --group user
#RUN sudo chown -R user:user /usr/local/airflow && sudo chmod -R 755 /usr/local/airflow


# or change to ./airflow_celeryexecutor.cfg /usr/local/airflow/airflow.cfg
# if you need .cfg with CeleryExecutor