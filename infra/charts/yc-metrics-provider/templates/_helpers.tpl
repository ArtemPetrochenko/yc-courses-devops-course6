{{- define "metric-provider.fullname" -}}
	{{- default .Chart.Name .Values.nameOverride -}}
{{- end -}}

{{- define "metric-provider.serviceAccountName" -}}
	{{- if .Values.serviceAccount.create -}}
    	{{ default (include "metric-provider.fullname" .) .Values.serviceAccount.name }}
	{{- else -}}
    	{{ default "default" .Values.serviceAccount.name }}
	{{- end -}}
{{- end -}}