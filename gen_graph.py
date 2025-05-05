import matplotlib.pyplot as plt

steps = []
fps_values = []

# Read data from file
with open('fps_log.txt', 'r') as f:
    for line in f:
        if "Step" in line and "FPS" in line:
            parts = line.strip().split(',')
            step_part = parts[0].split(':')[1].strip()
            fps_part = parts[1].split(':')[1].strip()

            steps.append(int(step_part))
            fps_values.append(float(fps_part))

# Plotting
plt.figure()
plt.plot(steps, fps_values, marker='o')
plt.title('FPS Over Simulation Steps')
plt.xlabel('Step')
plt.ylabel('FPS')
plt.grid(True)
plt.tight_layout()
plt.show()
