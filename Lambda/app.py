import boto3
from PIL import Image
import io
from datetime import datetime

s3 = boto3.client('s3')
dynamodb = boto3.resource('dynamodb')
table = dynamodb.Table('image-metadata')

OUTPUT_BUCKET = 'output-bucket'

def lambda_handler(event, context):
    for record in event['Records']:
        bucket = record['s3']['bucket']['name']
        key = record['s3']['object']['key']

        image = Image.open(io.BytesIO(
            s3.get_object(Bucket=bucket, Key=key)['Body'].read()
        ))

        image.thumbnail((128, 128))

        buffer = io.BytesIO()
        image.save(buffer, "JPEG")
        buffer.seek(0)

        thumb_key = f"thumb-{key}"

        s3.put_object(Bucket=OUTPUT_BUCKET, Key=thumb_key, Body=buffer)

        table.put_item(Item={
            'image_id': key,
            'created_at': datetime.utcnow().isoformat()
        })

    return {"status": "done"}