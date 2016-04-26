require 'reactor/tools/workflow_generator'

Reactor::Tools::WorkflowGenerator.new(
  editors: ['adam', 'alex'],
  correctors: ['dave', 'daniel'],
  obj_class: 'WorkflowPage',
  obj_name: 'workflow_page'
).generate!
