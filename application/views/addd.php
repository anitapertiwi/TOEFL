          <!-- page content -->
        <div class="right_col" role="main">
          <div class="row">
            <div class="x_panel">
              <div class="x_title">
                <h2>Upload Dataset</h2>
                <ul class="nav navbar-right panel_toolbox">
                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                  </li>
                  <li><a class="close-link"><i class="fa fa-close"></i></a>
                  </li>
                </ul>
                <div class="clearfix"></div>
              </div>
              <!-- new div below -->
              <div class="x_body">
                <?php echo form_open_multipart('News/formNews'); ?>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Upload News</label>
                    <input type="file" name="corpus" value="" placeholder="">
                    <p class="help-block">Please upload the news above. Supported ext: .txt</p>
                  </div>                                    

                  <button type="submit" class="btn btn-default" name="sub" value="Submit">Submit</button>

                <?php echo form_close(); ?>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

