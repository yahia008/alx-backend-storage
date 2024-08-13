#!/usr/bin/env python3
"""Module for Task 10."""


def update_topics(mongo_collection, name, topics):
    """Modifies the topics of documents in a,
    collection based on their name."""
    mongo_collection.update_many(
        {'name': name},
        {'$set': {'topics': topics}}
    )
