          <!-- page content -->
        <div class="right_col" role="main">
          <div class="row">
            <div class="x_panel">
              <div class="x_title">
                <h2>News</h2>
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
                   <a href="<?php echo base_url();?>News/formNews" class="btn btn-primary"><i class="fa fa-plus"></i>&nbsp; Tambah Dataset</a>
                   <table id="table" class="table table-bordered" style="color:black;">
                    <thead>
                      <tr>
                        <th>No.</th>
                        <th>Site Name</th>
                        <th>Size</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php $i=1;foreach($all as $row){ ?>
                      <tr>
                        <td><?php echo $i++; ?></td>
                        <td><?php echo $row['name']; ?></td>
                        <td><?php echo $row['size']." KB"; ?></td>
                        <td>
                        <a href="<?php echo base_url();?>datasets/<?php echo $row['name'];?>" target="_blank" title="Lihat soal"><button class="btn btn-success" ><i class="fa fa-eye"></i></button></a>                                            
                        <a href="<?php echo base_url();?>News/delete/<?php echo $row['id']; ?>" title="Hapus"><button class="btn btn-danger" ><i class="fa fa-trash" aria-hidden="true"></i></button></a> 
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
