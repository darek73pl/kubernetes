{{/*
choose initScript - default from file init-script.sh; else from values.yaml
*/}}
{{- define "webworker.initScript" -}}
{{- if .Values.webServer.initScript }}
{{- .Values.webServer.initScript }}
{{- else }}
{{- $.Files.Get "init-script.sh" }}
{{- end }}
{{- end }}

{{/*
choose updaterScript - default from file updater-script.sh; else from values.yaml
*/}}
{{- define "webworker.updaterScript" -}}
{{- if .Values.updater.updaterScript }}
{{- .Values.updater.updaterScript }}
{{- else }}
{{- $.Files.Get "updater-script.sh" }}
{{- end }}
{{- end }}