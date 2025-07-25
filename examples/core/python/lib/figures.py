import numpy as np
import matplotlib.pyplot as plt
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas

def make_spiral():
	t = np.linspace(9, 13, 400)
	growth_rate = 0.4          
	radius = np.exp(growth_rate * t)
	x = radius * np.cos(2 * np.pi * t)
	y = radius * np.sin(2 * np.pi * t)
	z = t - 2
	z_min = 6

	fig = plt.figure(figsize=(8, 6))
	canvas = FigureCanvas(fig)
	ax = fig.add_subplot(111, projection='3d')
	ax.plot(x, y, z, color='royalblue', linewidth=2)

	ax.grid(False)
	for spine in [ax.xaxis, ax.yaxis, ax.zaxis]:
		spine.pane.fill = False  
		spine.line.set_color((1.0, 1.0, 1.0, 0.0))  # transparent standard axes

	max_r = np.max(radius)
	x_range = max_r * 2.5
	y_range = max_r * 2.5
	z_max = np.max(z) + 1

	ax.set_xlim(-x_range, x_range)
	ax.set_ylim(-y_range, y_range)
	ax.set_zlim(0, z_max)

	# Remove labels
	ax.set_xticks([])
	ax.set_yticks([])
	ax.set_zticks([])

	# Axes
	ax.plot([0, 0], [0, 0], [z_min, z_max], color='red', linewidth=1)

	ax.set_box_aspect([1.5, 1.5, 2.0])

	plt.tight_layout()
	# plt.savefig("/tmp/time_spiral_with_vertical_line.py.png", dpi=150)
	canvas.draw()  

	width, height = fig.canvas.get_width_height()
	buf = canvas.buffer_rgba()

	image = np.frombuffer(buf, dtype=np.uint8).reshape((height, width, 4))
	rgb_image = image[:, :, :3].copy()  
	plt.close(fig)  

	return rgb_image
	# plt.show()
