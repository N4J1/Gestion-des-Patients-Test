<!-- create patient -->
<h1>Create Patient</h1>
<form action="/patients/create" method="post">
    <input type="text" name="name" placeholder="Name" required>
    <input type="text" name="contact" placeholder="Contact" required>
    <!-- TODO: make the date not in the past -->
    <input type="datetime-local" name="appointment_date" placeholder="Appointment Date" required>
   
    <select id="departmentSelect" required>
        <option value="">Select Department</option>
        {foreach $departments as $department}
        <option value="{$department.id}">{$department.name}</option>
        {/foreach}
    </select>
    
    <select name="doctor_id" id="doctorSelect" required disabled>
        <!-- options will be shown based on department selection -->
    </select>
    <button type="submit">Save</button>
</form>

<script>
    

    document.getElementById('departmentSelect').addEventListener('change', async function() {
        var departmentId = this.value;
        // disabling the doctor select as we are fetching the doctors
        document.getElementById('doctorSelect').disabled = "true";
        await fetchDoctors(departmentId);
        // enabling the doctor select after fetching the doctors
        document.getElementById('doctorSelect').disabled = false;

    });
    
    async function fetchDoctors(departmentId) {
        try {
            await fetch('/doctorsByDepartment/' + departmentId)
                .then(response => response.json())
                .then(data => {
                var doctorSelect = document.getElementById('doctorSelect');
                doctorSelect.innerHTML = '';
                data.forEach(function(doctor) {
                    var option = document.createElement('option');
                    option.value = doctor.id;
                    option.textContent = doctor.name;
                    doctorSelect.appendChild(option);
                });
            })
            .catch(error => console.error('Error fetching doctors:', error));
        } catch (error) {
            console.error('Error fetching doctors:', error);
        }
    }
</script>

