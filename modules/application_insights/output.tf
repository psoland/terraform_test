output "instrumentation_key" {
  description = "value of the application insights instrumentation key."
  value       = azurerm_application_insights.this.instrumentation_key
}
