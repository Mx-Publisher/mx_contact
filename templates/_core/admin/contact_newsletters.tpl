<SCRIPT LANGUAGE="JavaScript">
<!-- 
function disableForm(theform) {
if (document.all || document.getElementById) {
for (i = 0; i < theform.length; i++) {
var tempobj = theform.elements[i];
if (tempobj.type.toLowerCase() == "submit" || tempobj.type.toLowerCase() == "reset")
tempobj.disabled = true;
}
return true;
}
else {
alert("The form has been submitted.  Please do NOT resubmit. ");
return false;
   }
}
//  End -->
</script>

<!-- TinyMCE -->
<script type="text/javascript" src="/modules/mx_shared/tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript">
	tinyMCE.init({
		// General options
		mode : "textareas",
		language : "{L_TINY_MCE_LANGUAGE}",
        docs_language : "{L_TINY_MCE_LANGUAGE}",		
		elements : "message",
		theme : "advanced",
		plugins : "safari,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",

		// Theme options
		theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
		theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
		theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
		theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak",
		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_statusbar_location : "bottom",
		theme_advanced_resizing : true,

		// Example content CSS (should be your site CSS)
		content_css : "css/content.css",

		// Drop lists for link/image/media/template dialogs
		template_external_list_url : "lists/template_list.js",
		external_link_list_url : "lists/link_list.js",
		external_image_list_url : "lists/image_list.js",
		media_external_list_url : "lists/media_list.js",

		// Replace values for the template plugin
		template_replace_values : {
			username : "Some User",
			staffid : "991234"
		}
	});
</script>
<!-- /TinyMCE -->

<a name="maincontent"></a>

<h1>{L_MAIL_SESSION_HEADER}</h1>
<table cellspacing="1" cellpadding="4" border="0" align="center" class="forumline">
	<tr> 
	  <th class="thTop">{L_ID}</th>
	  <th class="thTop">{L_GROUP}</th>
	  <th class="thTop">{L_EMAIL_SUBJECT}</th>
	  <th class="thTop">{L_BATCH_START}</th>
	  <th class="thTop">{L_BATCH_SIZE}</th>
	  <th class="thTop">{L_BATCH_WAIT}</th>
	  <th class="thTop">{L_SENDER}</th>
	  <th class="thTop">{L_STATUS}</th>
	</tr>
	<!-- BEGIN mail_sessions -->
	<tr> 
	  <td class="{mail_sessions.ROW}" align="right">{mail_sessions.ID}</td>
	  <td class="{mail_sessions.ROW}" align="left"> {mail_sessions.GROUP}</td>
	  <td class="{mail_sessions.ROW}" align="left"> {mail_sessions.SUBJECT}</td>
	  <td class="{mail_sessions.ROW}" align="center"> {mail_sessions.BATCHSTART}</td>
	  <td class="{mail_sessions.ROW}" align="center"> {mail_sessions.BATCHSIZE}</td>
	  <td class="{mail_sessions.ROW}" align="center"> {mail_sessions.BATCHWAIT}</td>
	  <td class="{mail_sessions.ROW}" align="left"> {mail_sessions.SENDER}</td>
	  <td class="{mail_sessions.ROW}" align="left"> {mail_sessions.STATUS}</td>
	</tr>
	<!-- END mail_sessions -->
	<!-- BEGIN switch_no_sessions -->
	<tr> 
	  <td class="row2" align="center" colspan="10">{switch_no_sessions.EMPTY}</td>
	</tr>
	<!-- END switch_no_sessions -->
</table>

<h1>{L_EMAIL_TITLE}</h1>
<p>{L_EMAIL_EXPLAIN}</p>

<form method="post" action="{S_CONTACT_ACTION}" onSubmit="return disableForm(this);">

{ERROR_BOX}

<table cellspacing="1" cellpadding="4" border="0" align="center" class="forumline">
	<tr> 
	  <th class="thHead" colspan="2">{L_COMPOSE}</th>
	</tr>
	<tr> 
	  <td class="row1" align="right"><b>{L_RECIPIENTS}</b></td>
	  <td class="row2" align="left">{S_GROUP_SELECT}</td>
	</tr>
	<tr> 
	  <td class="row1" align="right"><b>{L_BATCH_SIZE}</b></td>
	  <td class="row2" align="left"><span class="gen"><input type="text" name="batchsize" size="4" maxlength="4" tabindex="2" class="post" value="{DEFAULT_SIZE}" /></span></td>
	</tr>                                
	<tr> 
	  <td class="row1" align="right"><b>{L_BATCH_WAIT}</b></td>
	  <td class="row2" align="left"><span class="gen"><input type="text" name="batchwait" size="4" maxlength="4" tabindex="2" class="post" value="{DEFAULT_WAIT}" /> s.</span></td>
	</tr>                                
	<tr> 
	  <td class="row1" align="right"><b>{L_EMAIL_SUBJECT}</b></td>
	  <td class="row2"><span class="gen"><input type="text" name="subject" size="45" maxlength="100" tabindex="2" class="post" value="{SUBJECT}" /></span></td>
	</tr>
	<tr> 
	  <td class="row1" align="right" valign="top"> <span class="gen"><b>{L_EMAIL_MSG}</b></span> 
	  <td class="row2">
	  <span class="gen"><textarea name="message" rows="40" cols="35" wrap="virtual" style="width:550px" tabindex="3" class="post" >{MESSAGE}</textarea></span>
	  </td>	  
	</tr>
	<tr> 
	  <td class="catBottom" align="center" colspan="2"><input type="submit" value="{L_EMAIL}" name="submit" class="mainoption" /></td>
	</tr>
</table>

</form>
