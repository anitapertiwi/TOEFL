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
              <div class="x_body">
                <?php echo form_open('QG/show'); ?>
                  <div class="form-group">
                    <label for="exampleInputEmail1">News</label> <br>
                    <?php foreach($news as $row){ ?>
                      <label class="checkbox-inline">
                        <input type="checkbox" id="inlineCheckbox1" name="berita[]" value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?>
                      </label>
                    <?php } ?>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Number of Question every News</label>
                    <input type="number" class="form-control" placeholder="Number of Questions" name="num" min=1 max=30>
                  </div>
                  <p class="help-block">Generated Question will displayed in the browser. You can select the questions then copy paste to your Ms. Word.</p>

                  <button type="submit" class="btn btn-default">Generate</button>

                <?php echo form_close(); ?>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

