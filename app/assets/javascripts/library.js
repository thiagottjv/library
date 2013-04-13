jQuery(function(){
	jQuery('#library_book_id').change(function(){
		var id = jQuery(this).val();
		selectBook(id);
	});
	//Selecting books by Name
	jQuery('#library_name').keyup(function(){
		jQuery('#library_author').val('Write the name of the author');
		var arr = Array();
		var i = 0;
		var name = jQuery(this).val();
		name = name.toLowerCase();
		jQuery('.books .name').each(function(){
			var text = jQuery(this).html();
			text = text.toLowerCase();
			if(text.search(name) !== -1){
				var id = jQuery(this).attr('id');
				id = id.replace("name_", "");
				arr[i] = id;
				i++;
			}
		});
		populateSelect(arr);
	}).click(function(){
		if(jQuery(this).val() == 'Write the name of your book'){
			jQuery(this).val('');
		}
	});
	//Selecting books by Author
	jQuery('#library_author').keyup(function(){
		jQuery('#library_name').val('Write the name of your book');
		var arr = Array();
		var i = 0;
		var author = jQuery(this).val();
		author = author.toLowerCase();
		jQuery('.books .author').each(function(){
			var text = jQuery(this).html();
			text = text.toLowerCase();
			if(text.search(author) !== -1){
				var id = jQuery(this).attr('id');
				id = id.replace("author_", "");
				arr[i] = id;
				i++;
			}
		});
		populateSelect(arr);
	}).click(function(){
		if(jQuery(this).val() == 'Write the name of the author'){
			jQuery(this).val('');
		}
	});
})
//Select book by ID
function selectBook(id){
	console.log(id);
	jQuery('.books').hide();
	jQuery('#book_'+id).fadeIn('slow');
}
//Populate the list of books for selection
function populateSelect(arr){
	jQuery('.books').hide();
	if(arr.length == 0){
		jQuery('#library_book_id').html("<option value='' disabled='disabled'>Type name or author to search</option>");
	}else{
		jQuery('#library_book_id').html("<option value=''>Select a Book</option>");
		for(var i = 0;i<arr.length;i++){
			var id = arr[i];
			var option = jQuery('#library_book_id2 option[value='+id+']').clone();
			jQuery('#library_book_id').append(option);
		}
	}
}