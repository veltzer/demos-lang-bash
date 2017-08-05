'''
dependencies for this project
'''

def populate(d):
    d.packs=[
       'ksh',
       'gawk',
       'mawk',
       'bash',
       'shellcheck',
    ]

def getdeps():
    return [
        __file__, # myself
    ]
