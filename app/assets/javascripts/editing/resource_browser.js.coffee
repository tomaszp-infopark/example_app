jQuery ->
  Resourcebrowser.filters = {
    'images': {
      title: 'Images',
      query: scrivito.obj_where('_obj_class', 'equals', 'Image').format('resourcebrowser'),
      icon: 'editing-icon-image',
    }
  }
