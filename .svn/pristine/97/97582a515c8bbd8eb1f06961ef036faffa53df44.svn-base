<html> 
    <head>
        <meta charset="utf-8">
        <title>jQuery Validation Plugin Examples</title>

        <!-- Bootstrap CSS used for styling the demo pages-->
         <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
      <!--  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"> -->
    <!--  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/> -->
  
    </head>

    <body>
        <!-- basic validation of a login form -->
       <!--  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script> -->
         <jsp:include page="menu.jsp"></jsp:include>
          <jsp:include page="body.jsp"></jsp:include>
          
           <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>
          
            <h1 class="page-header">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Feedback</h1>
           <form id="contactForm" class="form-horizontal">
             <div class="form-group">
              <label class="col-md-3 control-label">Customer Name</label>
              <div class="col-md-4">
               <input type="text" class="form-control" name="firstName" placeholder="FirstName SirName" />
              </div>
             </div>
   
   
   		<div class="form-group">
         <label class="col-md-3 control-label">Mob.No</label>
         <div class="col-md-4">
            <input type="text" class="form-control" name="email" />
        </div>
       </div>
    
       <div class="form-group">
        <label class="col-md-3 control-label">Email</label>
         <div class="col-md-4">
            <input type="text" class="form-control" name="email" />
         </div>
       </div>
   
       <div class="form-group">
        <label class="col-md-3 control-label">Your Feedback</label>
        <div class="col-md-4">
            <textarea class="form-control" name="content" rows="5"></textarea>
        </div>
       </div>
       
    <!-- #messages is where the messages are placed inside -->
       <div class="form-group">
        <div class="col-md-9 col-md-offset-3">
            <div id="messages"></div>
        </div>
       </div>
       
       <div class="form-group">
        <div class="col-md-9 col-md-offset-3">
            <button type="submit" class="btn btn-default">Submit</button>
        </div>
       </div>
   
    <script>
    $(document).ready(function() {
        $('#contactForm').bootstrapValidator({
            container: '#messages',
            feedbackIcons: {
            	required: 'fa fa-asterisk',
               // valid: 'glyphicon glyphicon-ok',
               // invalid: 'glyphicon glyphicon-remove',
               // validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                firstName: {
                    validators: {
                        notEmpty: {
                            message: 'Please enter your name'
                                   }
                                },
                   required:{}
                          },
               
                
                
                   }
        });
    });
    </script>
</form>

         <!--  <div id="container-fluid" >
        <div id="row-fluid" >     <div class="col-sm-5">
       
        
              
                   <input type="text" class="form-control" name="sonumber" id="sonumber" value="" readonly="readonly"><br>  refere it for all form
                <br><br>
              
             	 <form id="contactForm" meyhod="post" class="form-horizontal">
        <div class="form-group">
         <label class="col-md-4 control-label">Customer Name</label>
         <div class="col-md-4">
            <input type="text" class="form-control" name="firstName" placeholder="FirstName SirName" />
        </div>
        </div>
   
   
   <div class="form-group">
        <label class="col-md-4 control-label">Mob.No</label>
        <div class="col-md-4">
            <input type="text" class="form-control" name="email" />
        </div>
    </div>
    
    <div class="form-group">
        <label class="col-md-4 control-label">Email</label>
        <div class="col-md-4">
            <input type="text" class="form-control" name="email" />
        </div>
    </div>
   
    <div class="form-group">
        <label class="col-md-4 control-label">Your Feedback</label>
        <div class="col-md-4">
            <textarea class="form-control" name="content" rows="5"></textarea>
        </div>
    </div>
    #messages is where the messages are placed inside
    <div class="form-group">
        <div class="col-md-9 col-md-offset-3">
            <div id="messages"></div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-9 col-md-offset-4">
            <button type="submit" class="btn btn-default">Submit</button>
        </div>
    </div>
    </form>
    
    </div>
    </div>
    
    <script>
    $(document).ready(function() {
        $('#contactForm').bootstrapValidator({
            container: '#messages',
            feedbackIcons: {
            	required: 'fa fa-asterisk',
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                firstName: {
                    validators: {
                        notEmpty: {
                            message: 'Please enter your name'
                                   }
                                },
                   required:{}
                          },
               
                
                
                   }
        });
    });
    </script>
    
</form> -->
    </body>
</html>
