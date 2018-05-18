jarnum = 0
def printGetJar():
    global jarnum
    jarnum += 1
    print('Make jar (%d)' % jarnum)
    return jarnum

def printBringJar(N, J):
  if (N == 1):
      print('Bring ', J, ' into room up to level ', N)
      return
  anyjar = printGetJar()
  printBringJar(N-1, anyjar)
  newjar = printGetJar()
  print('Bring ', J, ' into ', newjar, ', leave at bottom')
  J1 = printGetJar()
  printBringJar(N-1, J1)
  print('now jump into it')
  print('Jump in ', anyjar , ' (above)')
  print('Bring block out (to level %d)' % (N-1))
  print('Exit with ', J)
  print('Bring ', J, ' up to level ', N)

printBringJar(5, 0)
