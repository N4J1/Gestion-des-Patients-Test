{extends file="layout.tpl"}

{block name=content}
<section class="content">
      <div class="container-fluid">
        <div class="card">
              <div class="card-header w-100 d-flex justify-content-between align-items-center">
                <h3 class="card-title flex-grow-1">Patients List</h3>
                <a href="/patients/create" class="btn btn-primary m-0">+ Add Patient</a>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Contact</th>
                    <th>Appointment Date</th>
                    <th>Doctor</th>
                    <th>Department</th>
                    <th>Actions</th>
                  </tr>
                  </thead>
                  <tbody>
                  {foreach $patients as $patient}
                  <tr>
                    <td>{$patient.id}</td>
                    <td>{$patient.name}</td>
                    <td>{$patient.contact}</td>
                    <td>{$patient.appointment_date}</td>
                    <td>{$patient.doctor_name}</td>
                    <td>{$patient.department_name}</td>
                    <td>
                        <a href="/patients/edit/{$patient.id}" class="btn btn-primary">
                        <i class="bi bi-pencil"></i>
                        </a>
                        <a href="/patients/delete/{$patient.id}" class="btn btn-danger">
                            <i class="bi bi-trash"></i>
                        </a>
                    </td>
                  </tr>
                  {/foreach}
                  </tbody>
                  <tfoot>
                  
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
      </div>
</section>
{/block}