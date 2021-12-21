import bpy

import bpy
scene = bpy.context.scene
scene.cycles.device = 'GPU'
print("~~~~~> scene device: {}".format(scene.cycles.device))
prefs = bpy.context.preferences
cprefs = prefs.addons['cycles'].preferences
cuda = cprefs.get_devices()
print("~~~~~> cprefs: {}".format(cprefs))
print("~~~~~> cuda devices: {}".format(cuda))

cprefs.compute_device_type = 'CUDA'
print('~~~~~> compute device type set to', cprefs.compute_device_type)

# for device in cuda:
#     print('~~~~~> Activating', device)
#     device.use = (device.type != 'CPU')
#     print("~~~~~> device {} usage status: {}".format(device, device.use))

bpy.ops.wm.save_userpref() 
exit()
