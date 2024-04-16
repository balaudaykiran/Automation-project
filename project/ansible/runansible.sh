cd /home/uday/automation/project/ansible  # Change the path to the location of the ansible playbook
echo "------------------------------------"
echo "Running ansible playbook"
echo "------------------------------------"

ansible-playbook --verbose n01605345-playbook.yaml

echo "------------------------------------"
echo "Completed ansible playbook"
echo "------------------------------------"