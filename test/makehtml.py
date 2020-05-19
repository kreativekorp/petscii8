#!/usr/bin/env python

from __future__ import print_function

import io

def read_screens():
	screens = {}
	screen = None
	with io.open('test.txt', 'r') as txt:
		for line in txt:
			if line.startswith('Screen '):
				fields = line.split(':')
				if len(fields) > 1:
					screen = fields[1].strip()
				else:
					screen = None
			elif screen is None:
				pass
			elif screen in screens:
				screens[screen] += line.strip()
			else:
				screens[screen] = line.strip()
	return screens

def make_html(filename, leftdir, rightdir, screen):
	with io.open(filename, 'w') as html:
		print(u'<html><head></head><body><table>', file=html)
		for i in range(0, 256):
			left = ('00' + hex(i)[2:].upper())[-2:]
			right = screen[i*2:i*2+2]
			print(u'<tr><td><img src="img/%s/%s.png"></td><td><code>%s</code></td><td>&rarr;</td><td><img src="img/%s/%s.png"></td><td><code>%s</code></td></tr>' % (leftdir, left, left, rightdir, right, right), file=html)
		print(u'</table></body></html>', file=html)

def main():
	screens = read_screens()
	make_html('pet2p8.html', 'pet', 'p8',  screens['pet2p8'])
	make_html('p82pet.html', 'p8',  'pet', screens['p82pet'])
	make_html('p8u2l.html',  'p8',  'p8',  screens['p8u2l'] )
	make_html('p8l2u.html',  'p8',  'p8',  screens['p8l2u'] )
	make_html('l92l9p.html', 'l9',  'l9p', screens['l92l9p'])
	make_html('l9p2l9.html', 'l9p', 'l9',  screens['l9p2l9'])
	make_html('pet2l9.html', 'pet', 'l9p', screens['pet2l9'])
	make_html('l92pet.html', 'l9p', 'pet', screens['l92pet'])
	make_html('l9pu2l.html', 'l9p', 'l9p', screens['l9pu2l'])
	make_html('l9pl2u.html', 'l9p', 'l9p', screens['l9pl2u'])

if __name__ == '__main__':
	main()
