# -*- coding: utf-8 -*-
"""
Created on Thu Jul 30 13:48:56 2015

@author: skylion
"""

# -*- coding: utf-8 -*-
"""
Created on Tue Jul 28 20:19:09 2015

@author: skylion
"""

#This code will control your robot during the simulation
from popupcad_gazebo.gazebo_controller import apply_joint_forces, apply_joint_pos
world_name='world'
robot_name='default_body'
joint_names=['hingejoint*|*A0', 'hingejoint*|*B0', 'hingejoint*|*C0', 'hingejoint*|*D0',  'hingejoint*|*KO', 'hingejoint*|*E0', 'hingejoint*|*G0', 'hingejoint*|*L0', 'hingejoint*|*H0', 'hingejoint*|*J0', 'hingejoint*|*K0', 'hingejoint*|*C0', 'hingejoint*|*L0', 'hingejoint*|*I0', 'hingejoint*|*F0', 'hingejoint*A0A0|*B0A0A0', 'hingejoint*B0A0|*B0A0A0', 'hingejoint*D0A0|*E0A0A0', 'hingejoint*E0A0|*E0A0A0', 'hingejoint*G0A0|*H0A0A0', 'hingejoint*H0A0|*H0A0A0', 'hingejoint*J0A0|*K0A0A0', 'hingejoint*K0A0|*K0A0A0', 'hingejoint*C0A0|*L0A0A0', 'hingejoint*L0A0|*L0A0A0', 'hingejoint*I0A0|*F0A0A0', 'hingejoint*F0A0|*F0A0A0', 'hingejoint*J0|*J0A0', 'hingejoint*A0|*A0A0', 'hingejoint*B0|*B0A0', 'hingejoint*K0|*K0A0', 'hingejoint*D0|*D0A0', 'hingejoint*C0|*C0A0', 'hingejoint*L0|*L0A0', 'hingejoint*E0|*E0A0', 'hingejoint*I0|*I0A0', 'hingejoint*G0|*G0A0', 'hingejoint*F0|*F0A0', 'hingejoint*H0|*H0A0']
#front_right = 'hingejoint*|*D0'
#middle_right = 'hingejoint*|*E0'
#back_right = 'hingejoint*|*F0'    
#front_left = 'hingejoint*|*G0'
#middle_left = 'hingejoint*|*H0'
#back_left= 'hingejoint*|*I0'
#right_legs = [front_right, middle_right, back_right]
#left_legs = [front_left, middle_left, back_left]
#legs = ['hingejoint*|*A0', 'hingejoint*|*B0', 'hingejoint*|*C0'] + left_legs + right_legs + ['hingejoint*|*J0', 'hingejoint*|*KO', 'hingejoint*|*L0']
legs = []
for num in range(0, 12):
    legs.append('hingejoint*|*' + str(chr(65 + num)) + '0')
for leg in legs:
    print(leg)
    assert(leg in joint_names)
print(legs)   
gait_duration = 1.0
#from math import pow
import time
force_scalar = 1 * pow(10, -7) #.000005
while True:    
    try:
        forces = [force_scalar, -1*force_scalar, force_scalar] * 4
        time.sleep(5.0)
        apply_joint_forces(world_name, robot_name, legs, forces, duration=gait_duration)
        print("ReversePosition!")
        forces = [item * -1 for item in forces]    
        time.sleep(5.0)    
        #forces.reverse()    
        apply_joint_forces(world_name, robot_name, legs, forces, duration=gait_duration)
    except:
        print("An error has occured")
        break
print("DONE EXECUTING PRIMARY CODE")
