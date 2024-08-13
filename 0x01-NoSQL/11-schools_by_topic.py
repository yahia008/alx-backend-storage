#!/usr/bin/env python3
"""Module for Task 11."""


def schools_by_topic(mongo_collection, topic):
    """Retrieves a list of schools from a collection that have a specific topic.
    """
    topic_filter = {
        'topics': {
            '$elemMatch': {
                '$eq': topic,
            },
        },
    }
    return [doc for doc in mongo_collection.find(topic_filter)]
