<h1>Edit Patient</h1>
<form action="/patients/edit/{$patient.id}" method="POST">
    <input type="text" name="name" value="{$patient.name}" required>
    <input type="text" name="contact" value="{$patient.contact}" required>
    <!-- TODO: make the date not in the past -->
    <input type="datetime-local" name="appointment_date" value="{$patient.appointment_date}" required>
    <select id="departmentSelect">
        {foreach $departments as $department}
        <option value={$department.id} {if $patient.doctor_department_id == $department.id}selected{/if}>{$department.name}</option>
        {/foreach}
    </select>
        <!-- select doctor based on department -->
    <select name="doctor_id" id="doctorSelect" required>
        {foreach $doctors as $doctor}
        <option value="{$doctor.id}" {if $patient.doctor_id == $doctor.id}selected{/if}>{$doctor.name}</option>
        {/foreach}
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
    
    // fetching the doctors based on the department id
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