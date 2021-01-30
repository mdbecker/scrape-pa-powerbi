from json import load

from csv import writer
j = load(open('by_age.json'))
j2 = j['results'][0]['result']['data']
columns = [a['Name'].split('.')[-1][:-1] for a in j2['descriptor']['Select'][1:]]
index = j2['dsr']['DS'][0]['ValueDicts']['D0']

with open('by_age.csv', 'w', newline='') as csvfile:
    w = writer(csvfile)
    for i, v in [('Age', columns)] + list(zip(index, [x['C'][1:] for x in j2['dsr']['DS'][0]['PH'][0]['DM0']])):
        w.writerow([i] + v)
