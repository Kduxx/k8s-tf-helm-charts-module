resource "helm_release" "release" {
  for_each = { for chart in var.helm_charts : chart.name => chart }

  name       = each.value.name
  repository = lookup(each.value, "repository", null)
  chart      = each.value.chart
  version    = each.value.version
  namespace  = each.value.namespace

  create_namespace = lookup(each.value, "auto_create_namespace", true)

  repository_username = lookup(each.value, "repository_username", null)
  repository_password = lookup(each.value, "repository_password", null)

  values = [file(each.value.values)]

}
