{{- define "nginx.name" -}}
nginx
{{- end -}}

{{- define "nginx.fullname" -}}
{{ .Release.Name }}-nginx
{{- end -}}

{{- define "nginx.labels" -}}
app.kubernetes.io/name: {{ include "nginx.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end -}}
