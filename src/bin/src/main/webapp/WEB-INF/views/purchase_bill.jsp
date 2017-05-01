<?php include('doctype.php');?>
<body>

    <div id="wrapper">

        <!-- Navigation -->
        <?php include('menu.php');?>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
					     <h1 class="page-header">Purchase Bill</h1>
						 <div style="margin-top:-10px;width:300px;position:absolute;right:10px;top:40px;"><label  style="color:#0066FF;font-size:13px;">Purchase Date</label><input type="text" class="form-control" placeholder="Date"></div>
					</div>
					
                    <!-- /.col-lg-12 -->
					<div class="row">
						<div class="col-xs-3">
								<label>Purchase Bill No.</label><input type="text" class="form-control" placeholder="Purchase Bill No.">
					    </div>
						<div class="col-xs-3">
								<label>Vendor</label><input type="text" class="form-control" placeholder="Vendor">
					    </div>
						<div class="col-xs-3">
								<label>Tin No.</label><input type="text" class="form-control" placeholder="Tin No.">
					    </div>
						<div class="col-xs-3">
										<label>Address Line1</label><input type="text" class="form-control" placeholder="Address Line1">
										<!--<textarea rows="1" class="form-control"></textarea>-->
							</div>
						<div class="col-xs-3">
									<label>Address Line2</label><input type="text" class="form-control" placeholder="Address Line2">
									<!--<textarea rows="1" class="form-control"></textarea>-->
						</div>
						<div class="col-xs-3">
								<label>Phone No.</label><input type="text" class="form-control" placeholder="Phone No.">
				   		</div>
						<div class="col-xs-3">
								<label>Email</label><input type="text" class="form-control" placeholder="Email">
				 	   </div>
						<div class="col-xs-12">
						<hr>
						</div>
						<div class="col-xs-3">
								<label>Product Code</label><input type="text" class="form-control" placeholder="Product Code">
					    </div>
						<div class="col-xs-3">
								<label>Product Name</label><input type="text" class="form-control" placeholder="Product Name">
					    </div>
						<div class="col-xs-3">
								<label>Category</label><input type="text" class="form-control" placeholder="Category">
					    </div>
						<div class="col-xs-3">
								<label>Quantity</label><input type="text" class="form-control" placeholder="Quantity">
					    </div>
					
						<div class="col-xs-3">
						<label>Unit</label>
							<select class="form-control">
								 <option>Select Unit</option>
								 <option>Pieces</option>
								 <option>Kg</option>
								 <option>Meter</option>
								 <option>Box</option>
								 <option>Gram</option>
								 <option>Litre</option>
							  </select>
						  </div>
						  <div class="col-xs-3">
								 <label>Purchase Rate</label>
								  <div class="form-group" >
									<label class="sr-only" for="">Purchase Rate</label>
									<div class="input-group">
									  <div class="input-group-addon">Rs.</div>
									  <input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
									  <div class="input-group-addon">.00</div>
									</div>
								  </div>
							  </div>
						<div class="col-xs-3">
						<label>Payment</label>
								<select class="form-control">
									 <option>Select Payment Method</option>
									 <option>Cash</option>
									 <option>Debit/Credit Card</option>
								  </select>
					    </div>
						 <div class="col-xs-3">
								<label>Vat(%)</label><input type="text" class="form-control" placeholder="Vat in %">
							  </div>
					</div>		
					<br>
						<div class="container">
								<button type="button" class="btn btn-primary">Add</button>
								<button type="button" class="btn btn-info">Update</button>
						</div>
						<br>
                </div>
                <!-- /.row -->

     <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Products to Purchase
                        </div>
                        <!-- /.panel-heading -->
							<div class="panel-body" >
								<div class="dataTable_wrapper">
									<div id="dataTables-example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer"><div class="row"><div class="col-sm-6"><div class="dataTables_length" id="dataTables-example_length"><span class="label label-warning">Show <select name="dataTables-example_length" aria-controls="dataTables-example" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div><div class="col-sm-6"><div id="dataTables-example_filter" class="dataTables_filter"><span class="label label-warning">Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="dataTables-example"></label></div></div></div><div class="row"><div class="col-sm-12"><table class="table table-striped table-bordered table-hover dataTable no-footer" id="dataTables-example" role="grid" aria-describedby="dataTables-example_info">
										<thead>
											<tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 156px;">Serial No.</th><th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 181px;">Product Name</th><th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 181px;">Unit</th><th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 181px;">Quantity</th><th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 181px;">Purchase Rate</th><th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 181px;">Vat(%)</th><th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 97px;">Edit</th><th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 97px;">Delete</th></tr>
										</thead>
										<tbody>
										<tr class="gradeA odd" role="row">
												<td class="sorting_1">1</td>
												<td>1234JK</td>
												<td class="sorting_1">Kg</td>
												<td>4</td>
												<td>1234JK</td>
												<td>12</td>
												<td class="center"><img src="../bower_components/images/edit-notes.png"></td>
												<td class="center"><img src="../bower_components/images/DeleteRed.png"></td>
											</tr><tr class="gradeA even" role="row">
												<td class="sorting_1">2</td>
												<td>4567LM</td>
												<td>Meter</td>
												<td class="sorting_1">1</td>
												<td>1234JK</td>
												<td>12</td>
												<td class="center"><img src="../bower_components/images/edit-notes.png"></td>
												<td class="center"><img src="../bower_components/images/DeleteRed.png"></td>
											</tr></tbody>
									</table></div></div><div class="row"><div class="col-sm-6"><div class="dataTables_info" id="dataTables-example_info" role="status" aria-live="polite">Showing 1 to 2 of 57 entries</div></div><div class="col-sm-6"><div class="dataTables_paginate paging_simple_numbers" id="dataTables-example_paginate"><ul class="pagination"><li class="paginate_button previous disabled" aria-controls="dataTables-example" tabindex="0" id="dataTables-example_previous"><a href="#">Previous</a></li><li class="paginate_button active" aria-controls="dataTables-example" tabindex="0"><a href="#">1</a></li><li class="paginate_button " aria-controls="dataTables-example" tabindex="0"><a href="#">2</a></li><li class="paginate_button " aria-controls="dataTables-example" tabindex="0"><a href="#">3</a></li><li class="paginate_button " aria-controls="dataTables-example" tabindex="0"><a href="#">4</a></li><li class="paginate_button " aria-controls="dataTables-example" tabindex="0"><a href="#">5</a></li><li class="paginate_button " aria-controls="dataTables-example" tabindex="0"><a href="#">6</a></li><li class="paginate_button next" aria-controls="dataTables-example" tabindex="0" id="dataTables-example_next"><a href="#">Next</a></li></ul></div></div></div></div>
								</div>
								<!-- /.table-responsive -->
								<!--<div class="well">
									<h4>DataTables Usage Information</h4>
									<p>DataTables is a very flexible, advanced tables plugin for jQuery. In SB Admin, we are using a specialized version of DataTables built for Bootstrap 3. We have also customized the table headings to use Font Awesome icons in place of images. For complete documentation on DataTables, visit their website at <a target="_blank" href="https://datatables.net/">https://datatables.net/</a>.</p>
									<a class="btn btn-default btn-lg btn-block" target="_blank" href="https://datatables.net/">View DataTables Documentation</a>
								</div>-->
							</div>
							<!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
					
                </div>
                <!-- /.col-lg-12 -->
            </div>
			<!-- /.panel-body -->
			<div class="row">
			<div class="col-xs-3">
								<label>Paid Amount</label><input type="text" class="form-control" placeholder="Paid Amount">
					    </div>
						<div class="col-xs-3">
								<label>Remaining Amount</label><input type="text" class="form-control" placeholder="Remaining Amount">
					    </div>
						<div class="col-xs-3">
								<label>Net Amount</label><input type="text" class="form-control" placeholder="Net Amount">
					    </div>
						<div class="col-xs-3">
								<label>LBT(%)</label><input type="text" class="form-control" placeholder="LBT(%)">
					    </div>
						<div class="col-xs-3">
								<label>Hamali</label><input type="text" class="form-control" placeholder="Hamali">
					    </div>
						<div class="col-xs-3">
								<label>Miscellaneous</label><input type="text" class="form-control" placeholder="Miscellaneous">
					    </div>
			 <div class="col-xs-3">
			 	<label>Excise</label>
				<input type="Excise" class="form-control" placeholder="Excise">
			  </div>
			  <div class="col-xs-3">
			 	<label>Entry Tax</label>
				<input type="text" class="form-control " placeholder="Entry Tax">
			  </div>
			  <div class="col-xs-3">
			 	<label>Vat(%)</label>
				<input type="text" class="form-control " placeholder="Vat(%)">
			  </div>
			  <div class="col-xs-3">
			 	<label>Transportation</label>
				<input type="text" class="form-control " placeholder="Transportation">
			  </div>
			  <div class="col-xs-3">
			 	<label>Octroi</label>
				<input type="text" class="form-control " placeholder="Octroi">
			  </div>
			  <div class="col-xs-3">
			 	<label>Discription</label>
					<textarea class="form-control" rows="3"></textarea>
			  </div>
			 
            </div>
			<button type="button" class="btn btn-default btn-default active">Save</button>
							<button type="button" class="btn btn-default btn-default active">Update</button>
							<button type="button" class="btn btn-default btn-default active">Edit</button>
							<button type="button" class="btn btn-default btn-default active">Delete</button>
							<button type="button" class="btn btn-default btn-default active">Print</button>
					<button type="button" class="btn btn-default btn-default active">PDF</button>
		

								<button type="button" class="btn btn-primary">Submit</button>
						<button type="button" class="btn btn-default btn-default active">Cancel</button>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

<?php include('jq.php');?>

</body>

</html>
