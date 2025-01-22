{extends file="layout.tpl"}

{block name=content}
<div class="container">
<h1 class="font-weight-bold text-center">Edit Patient</h1>
<form action="/patients/edit/{$patient.id}" method="POST">
    <div class="form-group">
        <label for="name">Name</label>
        <input type="text" name="name" id="name" class="form-control" value="{$patient.name}" required>
    </div>
    <div class="form-group">
        <label for="contact">Contact</label>
        <input type="text" name="contact" id="contact" class="form-control" value="{$patient.contact}" required>
    </div>  
    <!-- TODO: make the date not in the past -->
    <div class="form-group">
        <label for="appointment_date">Appointment Date</label>
        <input type="datetime-local" name="appointment_date" id="appointment_date" class="form-control" value="{$patient.appointment_date}" required>
    </div>
    <div class="form-group">
        <label for="departmentSelect">Department</label>
        <select id="departmentSelect" name="department_id" class="form-control" required>
        {foreach $departments as $department}
        <option value={$department.id} {if $patient.doctor_department_id == $department.id}selected{/if}>{$department.name}</option>
        {/foreach}
    </select>
    </div>
    <div class="form-group">
        <div class="d-flex justify-content-between align-items-center">
                <label for="doctorSelect">Doctor</label>
                <i class="bi bi-arrow-clockwise loading-spinner d-none"></i>
            </div>
        <select name="doctor_id" id="doctorSelect" class="form-control" required>
        {foreach $doctors as $doctor}
        <option value="{$doctor.id}" {if $patient.doctor_id == $doctor.id}selected{/if}>{$doctor.name}</option>
        {/foreach}
    </select>
    <button type="submit" class="btn btn-primary form-control mt-2">Save</button>
</form>
</div>
{/block} 

