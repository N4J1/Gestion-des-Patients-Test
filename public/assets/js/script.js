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
    document.querySelector('.loading-spinner').classList.remove('d-none');
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
            document.querySelector('.loading-spinner').classList.add('d-none');
        })
        .catch(error => console.error('Error fetching doctors:', error));
    } catch (error) {
        console.error('Error fetching doctors:', error);
        document.querySelector('.loading-spinner').classList.add('d-none');
    }
}