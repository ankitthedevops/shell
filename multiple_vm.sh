for i in {1..3}; do
    gcloud compute instances create vm-$i \
        --zone=us-central1-a \
        --machine-type=e2-medium \
        --image-family=debian-11 \
        --image-project=debian-cloud \
        --boot-disk-size=10GB \
        --tags=http-server,https-server
done


#Deletion of all vm in one go

# for i in {1..3}; do
#    gcloud compute instances delete vm-$i --zone=us-central1-a --quiet
# done
