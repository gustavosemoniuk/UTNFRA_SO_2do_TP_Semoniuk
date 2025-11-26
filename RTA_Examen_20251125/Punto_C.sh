sudo docker build -t gustavosemoniuk/tparq .
sudo docker login
sudo docker push gustavosemoniuk/tparq
sudo docker run -d -p 8080:80 gustavosemoniuk/tparq
