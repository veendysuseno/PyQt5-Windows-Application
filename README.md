# PyQt5 Windows Application

## Description
This program uses PyQt5 to create a graphical user interface (GUI) and Paho MQTT for message-based communication. It is designed to interact with sensor data and update statuses based on MQTT broker input.

## Prerequisites
Before running the program, ensure that all necessary dependencies are installed:

- **Python 3.x**: Ensure that the latest version of Python is installed on your system.
- **PyQt5**: Install with the command `pip install PyQt5`.
- **paho-mqtt**: Install with the command `pip install paho-mqtt`.
- **opencv-python** (if used): Install with the command `pip install opencv-python`.

## Program Structure
1. **Imports**:
   - Imports various PyQt5 modules for GUI and MQTT communication.
   - Imports additional modules like `datetime`, `os`, and `threading`.

2. **Global Variables**:
   - Stores information about process time, lamp power, and the status of monitored objects (car, pedestrian, motor).

3. **Class `table`**:
   - **Initialization**: Sets up the PyQt5 application and loads the QML file.
   - **PyQt5 Slots**:
     - `yolo_run(message)`: Executes an external Python script for object detection.
     - `lamp1()`, `clock_now()`, `refresh(message)`, `scan_road(message)`: Manages and updates GUI status based on sensor data and time.
     - `car()`, `pedestrian()`, `motor()`, `status()`: Returns relevant data for the GUI display.

4. **Function `on_message`**:
   - Handles messages received from the MQTT broker.

5. **Main Execution**:
   - Initializes and connects the MQTT client.
   - Starts the GUI application and runs the main loop.

## How to Run
1. **Set Up Environment**:
   - Ensure all dependencies are installed.

2. **Run the Program**:
   - Use the following command to run the program:
     ```bash
     python your_script_name.py
     ```
   - Replace `your_script_name.py` with the name of your Python script file.

3. **MQTT Connection**:
   - The program connects to the MQTT broker specified in the `broker` and `port` variables. Adjust these values as needed.

4. **Configuration Files**:
   - Ensure that files like `car_memory.txt`, `person_memory.txt`, and `motor_memory.txt` are available and correctly formatted.

## Notes
- **QML File**: Ensure the `main.qml` file is available and properly configured for the user interface.
- **MQTT Port**: The default MQTT port is 1883. If using a different port, ensure to update it accordingly.

## Author
- [Your Name] - [Your Email]

## License
- This program is licensed under [License Name] - see [LICENSE](LICENSE) for details.

