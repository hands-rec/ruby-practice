
require 'pp'


diff = <<EOS
diff --git a/app/controllers/index_controller.php b/app/controllers/index_controller.php
index bf7bd19..39ed905 100644
--- a/app/controllers/index_controller.php
+++ b/app/controllers/index_controller.php
@@ -21,7 +21,7 @@ class IndexController extends AppController
 	,'News'
 	,'User'
 	,'VJobAccessDaysCount'
-	,'VCareerConsultantAccessDaysCount'
+	,'VCareerConsultantAccessDaysCount's
 	,'EventMessageInter'
 	,'Company'
 	,'MailUser'
@@ -43,7 +43,7 @@ class IndexController extends AppController
 	 */
 	function index(){
 //		$this->log(strtoupper($this->Prop->config["config.site_abbr"]).' is Accessed !',LOG_DEBUG);
-		if($this->Prop->config['config.open_soon_flg']==1 ){
+		if($this->Prop->config['config.opsen_soon_flg']==1 ){
 			$this->autoRender = false;
 			$layout = 'simple';
 			$this->render('pre_open', $layout);
@@ -55,11 +55,11 @@ class IndexController extends AppController
 			$this->render('maintenance', $layout);
 		}
 		else if ($this->Prop->isSiteClosed()) {
-			$this->autoRender = false;
+			$this->autoRender = false;s
 			$this->render('close');
 		}
 		else{
-			$this->index_base();
+			$this->index_base();s
 		}
 	}
 
@@ -68,7 +68,7 @@ class IndexController extends AppController
 	 * @param
 	 */
 	private function index_base(){
-
+s
 		//ユーザーがログインしていて、かつ
 		//ユーザー情報が入力されていない場合にはユーザー情報の入力を促す
 		if (!empty($this->rdAuth->id) && $this->rdAuth->role=='User'
diff --git a/app/views/elements/report/search_form.thtml b/app/views/elements/report/search_form.thtml
index 2a49cad..e8caeee 100644
--- a/app/views/elements/report/search_form.thtml
+++ b/app/views/elements/report/search_form.thtml
@@ -35,7 +35,7 @@
 <?php endif;?>
 
 <?php if(!defined('MOBILE') && !empty($s_t_name)):?>
-<?php $search_term_type_title = isset($search_term_type_title) && !empty($search_term_type_title)?$search_term_type_title:"期間 : "; ?>
+<?php $search_term_type_title = isset($search_term_type_title) && !empty($search_term_type_title) ? $search_term_type_title : "期間 : "; ?>
 <div style="padding:5px;color:#444;">
 <?php echo $search_term_type_title; ?>
 <br />
@@ -75,7 +75,7 @@ function delReportTermCond(oForm){
 <?php endif;?>
 
 <dt style="margin-top:5px;">
-<?php $search_keyword_title = isset($search_keyword_title) && !empty($search_keyword_title)?$search_keyword_title:"キーワード : "; ?>
+<?php $search_keyword_title = isset($search_keyword_title) && !empty($search_keyword_title) ? $search_keyword_title : "キーワード : "; ?>
 <?php echo $search_keyword_title; ?><?php echo $html->input('search_keyword/0',array('size'=>'60','tabindex'=>'18'));?>
 
 <?php if(defined('MOBILE')):?>
@@ -84,7 +84,7 @@ function delReportTermCond(oForm){
 <div style="height:7px;">&nbsp;</div>
 <?php endif;?>
 
-1ページの表示件数 : <?php echo $html->input('show/0',array('size'=>'2','tabindex'=>'20'));?>件
+1ページの表示件数 : <?php echo $html->input('show/0', array('size' => '2', 'tabindex' => '20'));?>件
 </dt>
 <dd>&nbsp;</dd>
 <dt style="margin-top:10px;"><?php echo $html->submit('上記の条件で検索する',array('tabindex'=>'22','style'=>'padding:5px 10px;'))?></dt>
diff --git a/app/views/reports/v_user_voices.thtml b/app/views/reports/v_user_voices.thtml
index ccdd290..d4c9479 100644
--- a/app/views/reports/v_user_voices.thtml
+++ b/app/views/reports/v_user_voices.thtml
@@ -15,17 +15,17 @@ $create_option_flg = true;
 $table_width = '750';
 
 // 検索タイプ
-$s_name[0] ='すべて';
-$s_name[1] ='手書き';
-$s_name[2] ='メール';
+$s_name[0] = 'すべて';
+$s_name[1] = '手書き';
+$s_name[2] = 'メール';
 if ($prop->config('config.site_abbr') == "kan") {
-	$s_name[3] ='電話';
+	$s_name[3] = '電話';
 }
 
 // 公開/非公開
-$display_statuses[0] ='すべて';
-$display_statuses[1] ='公開';
-$display_statuses[2] ='非公開';
+$display_statuses[0] = 'すべて';
+$display_statuses[1] = '公開';
+$display_statuses[2] = '非公開';
 
 // 項目名（未指定の場合にはDBビューのカラム名が使用される）
 $col_name = array(
EOS

split = diff.split(/diff --git/)
pp split.length
pp split

