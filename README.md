# Cloud Run Rails6

docker build -t cloud_run_rails:0.0.1 .

docker run -d -it -p  3000:3000 cloud_run_rails:0.0.1

docker tag cloud_run_rails:0.0.1 us.gcr.io/${GOOGLE_CLOUD_PROJECT}/cloud_run_rails:0.0.1

docker push us.gcr.io/${GOOGLE_CLOUD_PROJECT}/cloud_run_rails:0.0.1

terraform apply -var-file=prod.tfvars
