#!/usr/bin/env python3
"""11-schools_by_topics.py"""


def schools_by_topic(mongo_collection, topic):
    """Returns a list of schools specific to a
    topic in their topics list.

    Args:
        mongo_collection (pymongo.collection.Collection):
        The PyMongo collection object.
        topic (str):
        The topic to search in the schools' lists.

    Returns:
        list: A list of dictionaries of the
         school documents.
    """

    schools = mongo_collection.find({"topics" : topic})
    return schools
