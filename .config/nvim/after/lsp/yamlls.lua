return {
  settings = {
    yaml = {
      schemas = {
        kubernetes = "**/k8s/**",
        ["https://www.schemastore.org/kustomization.json"] = "kustomization.{yml,yaml}"
      }
    }
  }
}
