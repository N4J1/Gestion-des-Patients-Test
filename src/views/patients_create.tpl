{extends file="layout.tpl"}

{block name=content}
<div class="container">
<h1 class="font-weight-bold text-center">Create Patient</h1>
    <form action="/patients/create" method="post">
        <div class="form-group">
            <label for="name">Name</label> 
            <input type="text" name="name" id="name" placeholder="Name" class="form-control" required>
        </div>
        <div class="form-group d-flex flex-column">
            <label for="contact">Contact</label>
            <input type="text" name="contact" id="contact" placeholder="Contact" class="form-control" required>
        </div>
        <!-- TODO: make the date not in the past -->
        <div class="form-group d-flex flex-column">
            <label for="appointment_date">Appointment Date</label>
            <input type="datetime-local" name="appointment_date" id="appointment_date" placeholder="Appointment Date" class="form-control" required>
        </div>
    
        <div class="form-group d-flex flex-column">
            <label for="departmentSelect">Department</label>
            <select id="departmentSelect" name="department_id" class="form-control" required>
                <option value="">Select Department</option>
                {foreach $departments as $department}
                <option value="{$department.id}">{$department.name}</option>
                {/foreach}
            </select>
        </div>
        
        <div class="form-group d-flex flex-column">
            <div class="d-flex justify-content-between align-items-center">
                <label for="doctorSelect">Doctor</label>
                <i class="bi bi-arrow-clockwise loading-spinner d-none"></i>
            </div>
            <select name="doctor_id" id="doctorSelect" class="form-control" required disabled>
                <!-- options will be shown based on department selection -->
            </select>
        </div>
        <button type="submit" class="btn btn-primary form-control" style="margin-top: 10px;">Save</button>
    </form>
</div>
{/block}

