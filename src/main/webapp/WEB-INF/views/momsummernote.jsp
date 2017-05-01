
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>




<div class="saveMom"></div>
 	  <button type="button" class="btn btn-primary btn-block  " onclick="saveMom();">Submit</button>

<script>


$('.saveMom').summernote(
		{
			height : 300,
			codemirror : {
				theme : 'monokai'
			},
			toolbar : [ [ 'style', [ 'style' ] ], // no style button
			[ 'style', [ 'bold', 'italic', 'underline', 'clear' ] ],
					[ 'fontsize', [ 'fontsize' ] ],
					[ 'color', [ 'color' ] ],
					[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
					[ 'height', [ 'height' ] ],
					[ 'insert', [ 'picture', 'link' ] ], // no insert
					// buttons
					[ 'table', [ 'table' ] ], // no table button
			],
			focus : true
		});




</script>


