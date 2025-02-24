from robot.api.deco import keyword
from pymongo import MongoClient

client = MongoClient('mongodb+srv://qax:xperience@cluster0.qrox6.mongodb.net/markX?retryWrites=true&w=majority')

db = client ['markX']

@keyword('Remove Task from database')
def remove_task_by_name(task_name):
    collection=db['tasks']
    collection.delete_many({'text':task_name})
    print('Removendo a tarefa' + task_name)