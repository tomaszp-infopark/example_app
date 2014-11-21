//= require jquery
//= require jquery_ujs
//= require scrivito
//= require scrivito_editors
//= require scrivito_content_browser
//= require_tree .

(function() {
  $(function() {
    // Configure content browser to show an image filter
    scrivito.content_browser.filters = {
      'images': {
        title: 'Images',
        query: scrivito.obj_where('_obj_class', 'equals', 'Image'),
        icon: 'scrivito-resourcebrowser-icon-image',
      }
    }
  })
})()
