import threading
import matplotlib
matplotlib.use('Agg')  # disables matplotlib warning (we will not use GUI):
# UserWarning: Starting a Matplotlib GUI outside of the main thread will likely fail

import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas

def make_simple_surface(img_size=400):
    print("Current thread:", threading.current_thread())
    print("Main thread:   ", threading.main_thread())

    fig = plt.figure(figsize=(img_size / 100, img_size / 100), dpi=100)
    canvas = FigureCanvas(fig)
    ax3d = fig.add_subplot(111, projection='3d')
    ax3d.axis('off')

    # Simple 3D surface (paraboloid)
    x = np.linspace(-1, 1, 20)
    y = np.linspace(-1, 1, 20)
    x, y = np.meshgrid(x, y)
    z = x**2 + y**2

    ax3d.plot_surface(x, y, z, color='blue', alpha=0.7)

    canvas.draw()
    width, height = map(int, fig.get_size_inches() * fig.get_dpi())
    rgba = np.frombuffer(canvas.buffer_rgba(), dtype=np.uint8).reshape(height, width, 4)
    rgb = rgba[:, :, :3].copy()  # Extract RGB channels
    bgr = rgb[:, :, ::-1]  # Convert to BGR for OpenCV compatibility
    plt.close(fig)
    return bgr

if __name__ == "__main__":
    img = make_simple_3d()
    from PIL import Image
    Image.fromarray(img).show()