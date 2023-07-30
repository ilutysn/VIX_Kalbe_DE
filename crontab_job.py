import schedule
import time
import subprocess

def run_script():
    # Function to run the shell script using subprocess
    subprocess.call(["bash", "D:/Nebula/Project/kalbevix//check_directory.sh"])

# Schedule the script to run at 07:00 AM daily
schedule.every().day.at("07:00").do(run_script)

# Run the scheduler continuously
while True:
    # Check if there are any pending scheduled tasks and run them
    schedule.run_pending()
    # Sleep for 1 second before checking again
    time.sleep(1)