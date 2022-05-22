import re

def inject(frm: dict[str, str], to: str):
  for key in frm:
    to = re.sub(r'\$' + key, r'' + frm[key], to)

  return to

     
def parse_kv(frm: str) -> dict[str, str]:
  kv = dict()

  expr = re.compile(r'^(\w+)\s*:\s*("?)(.*)\2\s*$', re.M)
  matches = re.findall(expr, frm)

  for (k, _, v) in matches:
    kv[k] = v

  return kv


with open('.private', 'r') as file:
  try:
    s = file.read()
    fields = parse_kv(s)

  except Exception as e:
    print(e)
  
with open('cv.yml', 'r') as file:
  try:
    cv = file.read()
 
  except Exception as e:
    print(e)
  
dat = inject(fields, cv)
  
with open('cv-final.yml', 'w') as outf:
  outf.write(dat)
