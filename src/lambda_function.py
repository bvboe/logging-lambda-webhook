import json
import logging

logger = logging.getLogger()
logger.setLevel(logging.INFO)

def lambda_handler(event, context):
    logger.info('Retrieved new message!')
    logger.info(event)
    logger.info("Body: " + event.get('body'))
    return {
        'statusCode': 200
    }
