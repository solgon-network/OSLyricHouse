import argparse
#
parser = argparse.ArgumentParser()
#
parser.add_argument('-s', action='store', dest='simple_value', help='Store a simple value')
#
parser.add_argument('-c', action='store_const', dest='constant_value', const='value-to-store', help='Store a constant value')
#
parser.add_argument('-t', action='store_true', default=False, dest='boolean_switch', help='Set a switch to true')
#
parser.add_argument('-f', action='store_false', default=False,
                    dest='boolean_switch',
                    help='Set a switch to false')
#
parser.add_argument('-a', action='append', dest='collection',
                    default=[],
                    help='Add repeated values to a list',)
#
parser.add_argument('-A', action='append_const', dest='const_collection',
                    const='value-1-to-append',
                    default=[],
                    help='Add different values to list')
#
parser.add_argument('-B', action='append_const', dest='const_collection',
                    const='value-2-to-append',
                    help='Add different values to list')
#
parser.add_argument('--version', action='version', version='%(prog)s 1.0')
#
results = parser.parse_args()
print ('simple_value     =', results.simple_value)
print ('constant_value   =', results.constant_value)
print ('boolean_switch   =', results.boolean_switch)
print ('collection       =', results.collection)
print ('const_collection =', results.const_collection)
#modifying lists#
#append- to add | extend- to ass one list to another | 
#insert- add a new list elementright before a specific index
#del - once elements are delted indices are automatically
    #updated.
#remove- removes a given vsalue inside a list
#more information about methods to minipultae list can be 
    #found at http://docs.python.org/3.3/tutorial/datastructures.html#more-on-lists

user_value = int(input('insert a number:'))

i = 0
res = 0
while i<= user_value:
    res = res + i
    i += 1
print('Result is: ', res)

#dictionaries neo example
tryme_switch = {
    1: 'so you took the green pill. I\'ll see you on the other side',
    2: 'blue is a nice color. lets see where this takes us',
    3: 'ahh. you have choosen right. continue on to the next step',
}
user = int(input('which pill will you take today?(0/1/2): '))
if user in tryme_switch:
    print(tryme_switch[user])
else:
    print('we don\'t got that here sir, try again')

#functions
#python functions body must be indented in order to delimit
    #the start and the end of the function itself.
#once a varible refers to a function, it can be used in the same ways
def a():
    print('thanks asshole')
    return 0
def b():
    print('just another obdy to you huh?')
    return 0
function_switch = {
    1: a,
    2: b,
}
user = int(input('''select an operation
1) go fuck yourself
2) go fuck yourself elsewhere
'''))
try:
    if user in function_switch:
        print(function_switch[user])
except ValueError:
    print('why is this shit so hard')
 
    

