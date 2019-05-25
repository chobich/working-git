$(document).on('turbolinks:load', function() {
  $(function(){
    function buildNewProjectHTML(project){
      var html =
      `
      <input type="text" name="project[name]" class="input-field__content__form" placeholder="プロジェクトを入力してください">
      `
      return html;
    }

    $('select[name="project[name]"]').change('click',function(){
    var project = $('select[name="project[name]"]').prop('selected', true).val();
    console.log(project)
    if (project == "新しく登録する"){
      var insertHTML = '';
      insertHTML = buildNewProjectHTML();
      $(".select-field__project-select").after(insertHTML);
      $(function(){
        $('select[name="project[name]"] option:not(:selected)').prop('disabled', true);
      })
    }
  })
  })
}
);
//jquery/javascript→動的に動く
