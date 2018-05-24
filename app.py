# Imports the Google Cloud client library
from google.cloud import storage
import os

os.environ["GOOGLE_APPLICATION_CREDENTIALS"]
# Instantiates a client
storage_client = storage.Client()

# The name for the new bucket
bucket_name = 'spikemodelv2teset'

# Creates the new bucket
bucket = storage_client.create_bucket(bucket_name)

print('Bucket {} created.'.format(bucket.name))
