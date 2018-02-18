          <!-- page content -->
        <div class="right_col" role="main">
          <div class="row">
            <div class="x_panel">
              <div class="x_title">
                <h2>Question Collection</h2>
                <ul class="nav navbar-right panel_toolbox">
                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                  </li>
                  <li><a class="close-link"><i class="fa fa-close"></i></a>
                  </li>
                </ul>
                <div class="clearfix"></div>
              </div>
              <div class="row">
                <div class="col-md-12">
                   <a href="<?php echo base_url();?>Question/formQuestion" class="btn btn-primary"><i class="fa fa-plus"></i>&nbsp; Tambah Koleksi</a>
                   <table id="table" class="table table-bordered" style="color:black;">
                    <thead>
                      <tr>
                        <th>No.</th>
                        <th>Question</th>
                        <th>POS</th>
                        <th>Underline</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php $i=1;foreach($all as $row){ ?>
                      <tr>
                        <td><?php echo $i++; ?></td>
                        <td><?php echo $row['text']; ?></td>
                        <td><?php echo $row['postext']; ?></td>
                        <td><?php echo $row['underline']; ?></td>
                        <td>
                        <a href="<?php echo base_url();?>Question/formQuestion/<?php echo $row['id']; ?>" target="_blank" title="Edit soal"><button class="btn btn-warning" ><i class="fa fa-pencil"></i></button></a>                                            
                        <a href="<?php echo base_url();?>Question/delete/<?php echo $row['id']; ?>" title="Hapus"><button class="btn btn-danger" ><i class="fa fa-trash" aria-hidden="true"></i></button></a> 
                        </td>
                      </tr>
                      <?php } ?>
                    </tbody>
                  </table>            
                </div>
              </div>              
              <!-- new div below -->
            </div>
          </div>
        </div>
        <!-- /page content -->
