module "custom_manifests" {
  providers = {
    kustomization = kustomization.example
  }
  source  = "kbst.xyz/catalog/custom-manifests/kustomization"
  version = "0.1.0"

  configuration = {
    apps = {
      namespace = "ekowapi-${terraform.workspace}"
      resources = [
        "${path.root}/manifests/ekowapi/deployment.yaml",
        "${path.root}/manifests/ekowapi/service.yaml"
      ]
      common_labels = {
        "env" = terraform.workspace
      }
    }
    ops = {}
    loc = {}
  }

}
