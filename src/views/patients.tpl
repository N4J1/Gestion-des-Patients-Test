{extends file="layout.tpl"}

{block name=content}
<section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12 col-md-8">

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
            <!-- /.card -->
          <div class="row">
          <div class="col-12 col-md-4">
            <div class="info-box" bis_skin_checked="1">
                <span class="info-box-icon bg-info"><i class="bi bi-person-fill-add"></i></span>
                <div class="info-box-content" bis_skin_checked="1">
                  <span class="info-box-text text-muted">Admit New</span>
                  <span class="info-box-number text-info">Patient</span>
                </div>
            </div>
          </div>
          <div class="col-12 col-md-4">
            <div class="info-box" bis_skin_checked="1">
                <span class="info-box-icon bg-primary"><i class="bi bi-truck"></i></span>
                <div class="info-box-content" bis_skin_checked="1">
                  <span class="info-box-text text-muted">Emergency</span>
                  <span class="info-box-number text-primary">Room</span>
                </div>
            </div>
          </div>
          <div class="col-12 col-md-4">
            <div class="info-box" bis_skin_checked="1">
                <span class="info-box-icon bg-success"><i class="bi bi-prescription2"></i></span>
                <div class="info-box-content" bis_skin_checked="1">
                  <span class="info-box-text text-muted">Pharmacy</span>
                  <span class="info-box-number text-success">Details</span>
                </div>
            </div>
          </div>
        </div>
          </div>
          <div class="col-4">
            <div class="row">
              <div class="col-12 col-lg-6">
                <div class="info-box" bis_skin_checked="1">
                <span class="info-box-icon bg-success"><i class="bi bi-journals"></i></span>
                <div class="info-box-content" bis_skin_checked="1">
                  <span class="info-box-text">Total Appointments</span>
                  <span class="info-box-number">{$patients_count}</span>
                </div>
                </div>
              </div>
              <div class="col-12 col-lg-6">
                <div class="info-box" bis_skin_checked="1">
                <span class="info-box-icon bg-primary"><i class="bi bi-people"></i></span>
                <div class="info-box-content" bis_skin_checked="1">
                  <span class="info-box-text">Total Patients</span>
                  <span class="info-box-number">{$patients_count}</span>
                </div>
                </div>
              </div>
               <div class="col-12 col-lg-6">
                <div class="info-box" bis_skin_checked="1">
                <span class="info-box-icon bg-warning"><i class="bi bi-x-circle"></i></span>
                <div class="info-box-content" bis_skin_checked="1">
                  <span class="info-box-text">Total Cancelled Appointments</span>
                  <span class="info-box-number">042</span>
                </div>
                </div>
              </div>
              <div class="col-12 col-lg-6">
                <div class="info-box" bis_skin_checked="1">
                <span class="info-box-icon bg-info"><i class="bi bi-person-badge"></i></span>
                <div class="info-box-content" bis_skin_checked="1">
                  <span class="info-box-text">Total Doctors</span>
                  <span class="info-box-number">{$doctors_count}</span>
                </div>
                </div>
              </div>
             
            </div>
            <div class="row border p-3 rounded-3">
            <h3>Doctors</h3>
            {* search *}
            <div class="col-12 mb-4">
              <input type="text" class="form-control" placeholder="Search">
            </div>
            {foreach $doctors as $doctor}
              <div class="col-12 col-md-4 text-center">
                <img src="https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png?20150327203541" alt="Logo" class="img-fluid text-center" style="width: 70px; height: 70px; border-radius: 50%;">
                <p class="text-center text-info text-weight-bold">{$doctor.name}</p>
              </div>
              {/foreach}
            </div>
          </div>
          <!-- /.col -->
        </div>
        {* services *}
        
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
</section>

{/block}