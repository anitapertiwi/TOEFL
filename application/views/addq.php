          <!-- page content -->
        <div class="right_col" role="main">
          <div class="row">
            <div class="x_panel">
              <div class="x_title">
                <h2>Form Collection</h2>
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
                <?php echo form_open('Question/formQuestion'); ?>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Question</label>
                    <input type="text" class="form-control" placeholder="Text Question" required="" name="text" value="<?php if(isset($row)) echo $row['text']; ?>">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Underline</label>
                    <input type="text" class="form-control" placeholder="Index of underlines, separated by comma (,)" name="underline" required="" value="<?php if(isset($row)) echo $row['underline']; ?>">
                    <?php if(isset($row)){ ?>
                      <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
                    <?php } ?>
                    <p class="help-block">Please carefully count the index. Write down index of undelines and separate it by comma</p>
                  </div>                                    

                  <button type="submit" class="btn btn-default">Submit</button>

                <?php echo form_close(); ?>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

