#!/usr/bin/env python3
"""Module for Task 8."""
import pymongo


def list_all(mongo_collection):
    """
    list all collections
    """
    if mongo_collection is None:
        return []
    return list(mongo_collection.find())
