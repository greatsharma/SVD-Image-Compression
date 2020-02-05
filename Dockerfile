FROM python:3.6.3-slim

LABEL maintainer = "Gaurav Sharma <greatsharma04@gmail.com>"\
      description = "An all-in-one docker container containing a jupyter notebook\
                     showing how images are compressed using SVD"

WORKDIR /app

COPY . /app

RUN pip --no-cache-dir install numpy matplotlib jupyter

# expose port 8888 available to the world outside the docker container
EXPOSE  8888

CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]

