          <!-- page content -->
        <div class="right_col" role="main">
          <div class="row">
            <div class="x_panel">
              <div class="x_title">
                <h2>Generate Question</h2>
                <ul class="nav navbar-right panel_toolbox">
                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                  </li>
                  <li><a class="close-link"><i class="fa fa-close"></i></a>
                  </li>
                </ul>
                <div class="clearfix"></div>
              </div>
              <!-- new div below -->
              <div class="form-group">
                    <label for="exampleInputPassword1">Choose the type of question you want</label>
              </div>
              <div>
              <a href="<?php echo base_url();?>QG/generate_error" class="btn btn-primary"><i class="fa fa-sticky-note"></i>&nbsp; Error Identification</a>
              </div>
              <div>
              <a href="<?php echo base_url();?>QG/generate_completion" class="btn btn-primary"><i class="fa fa-sticky-note-o"></i>&nbsp; Sentence Completion</a>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

