          <!-- page content -->
        <div class="right_col" role="main">
          <div class="row">
            <div class="x_panel">
              <div class="x_title">
                <h2>Candidate Question</h2>
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
                   <table id="table" class="table table-bordered" style="color:black;">
                    <thead>
                      <tr>
                        <th>No.</th>
                        <th>Source</th>
                        <th>Question</th>
                        <th>Distance-index</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php $i=1;foreach($all as $row){ ?>
                      <tr>
                        <td><?php echo $i++; ?></td>
                        <td><?php echo $row['name']; ?></td>
                        <td><?php echo $row['text']; ?></td>
                        <td><?php echo $row['distance']; ?></td>
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
