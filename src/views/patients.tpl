<h1>Patient List</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Contact</th>
        <th>Appointment Date</th>
        <th>Doctor</th>
        <th>Department</th>
        <th>Actions</th>
    </tr>
    {foreach $patients as $patient}
    <tr>
        <td>{$patient.id}</td>
        <td>{$patient.name}</td>
        <td>{$patient.contact}</td>
        <td>{$patient.appointment_date}</td>
        <td>{$patient.doctor_name}</td>
        <td>{$patient.department_name}</td>
        <td>
            <a href="/patients/edit/{$patient.id}">Edit</a>
            <a href="/patients/delete/{$patient.id}">Delete</a>
        </td>
    </tr>
    {/foreach}
</table>
<a href="/patients/create">Add New Patient</a>