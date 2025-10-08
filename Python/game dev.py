import pygame
# pygame ko initialize krte hai
pygame.init()
# Game Screen
W=800
H=500
x = 0
y = 0
w = 100
h = 100
screen = pygame.display.set_mode((W,H))
color = 255,255,60#RGB - RED ,GREEN,BLUE
red = 255,0,0
while True:
    screen.fill(color)
    # game m koi bi changes krne ke liye
    # rectangle
    pygame.draw.rect(screen,red,[x,y,w,h])
    pygame.display.update()
