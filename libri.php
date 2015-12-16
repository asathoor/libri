<?php
/****
* Plugin Name: PETJ Libri
* Plugin URI: http://multimusen.dk/
* Description: Literature Review
* Version: 1.0
* Author: Per Thykjaer Jensen
* Author URI: http://www.multimusen.dk
* License: GPL3
****/

/* Add pages Libri to the Dashboard. */
function petj_libri_add_dashboard_widgets() {

	wp_add_dashboard_widget(
                 'petj_libri',         // Widget slug.
                 'Libri: tilføj en ny bog',        // Title.
                 'petj_libri_new' 	// Display function.
        );	
}

$add_widget = add_action( 'wp_dashboard_setup', 'petj_libri_add_dashboard_widgets' );


/* main function: form to add a book */
function petj_libri_new(){

	if(isset($_REQUEST['ok'])){

		/* sanitize input */
		$renset = $_REQUEST;

		/* insert */
		global $wpdb;

		$wpdb->show_errors();

		$forfatter = addslashes(strip_tags($_REQUEST['forfatter']));
		$titel  = addslashes(strip_tags($_REQUEST['titel']));
		$where = addslashes(strip_tags($_REQUEST['where'])); // trykkested
		$anno = addslashes(strip_tags($_REQUEST['anno']));
		$note = addslashes(strip_tags($_REQUEST['note']));
		$projekt = addslashes(strip_tags($_REQUEST['projekt']));
		$hvor = addslashes(strip_tags($_REQUEST['hvor'])); // fysisk eller url

		/* insert a book */
		$wpdb->insert( 
			'libri', 
			array( 
				'Id' => NULL, 
				'Author' => $forfatter,
				'Title' => $titel,
				'Where' => $where,
				'Year' => $anno,
				'Note' => $note,
				'Projekt' => $projekt,
				'Hvor' => $hvor
			),  
			array('%s','%s','%s','%s','%s','%s','%s','%s') 
		);

?>
		<h3>Bogen er tilføjet</h3>

		<p>Fortsæt ved at klikke ok ...</p>

		<form action="#" method="get" enctype="application/x-www-form-urlencoded">
			<button name="ny" value="ny" type="submit">OK</button>
		</form>
		<?php

	}
	else {
	?>
	<h3>Tilføj en bog</h3>

	<form action="#" method="get" enctype="application/x-www-form-urlencoded">
		<input type="text" name="forfatter" required> Forfatter<br>
		<input type="text" name="titel" required> Titel<br>
		<input type="text" name="anno" required> Udgivelsesår<br>
		<input type="text" name="where" required> Hvor<br>
		<input type="text" name="hvor" required> URL / hylde<br>
		<select name="projekt"> 
			<option value="FossCMS" label="FossCMS"> Open Source CMS</option>	
		</select> Projekt
		<p>
		<textarea name="note" rows="5" cols="35">Notat</textarea>
		</p>
		<button name="cncl" value="cncl" type="reset">Fortryd</button>	
		<button name="ok" value="ok" type="submit" class="btn btn-primary">OK</button>
	</form>

	<?php } // ends the else l. 28.
} // ends petj_libri_new
