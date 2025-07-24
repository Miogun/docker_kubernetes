{{- define "flask-nginx-chart.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "flask-nginx-chart.labels" -}}
app.kubernetes.io/name: {{ include "flask-nginx-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "flask-nginx-chart.name" -}}
{{- .Chart.Name -}}
{{- end }}
