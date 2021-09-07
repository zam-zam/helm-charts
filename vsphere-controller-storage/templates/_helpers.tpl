{{/*  Common  */}}

{{- define "common.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "common.labels" -}}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "common.annotations" -}}
helm.sh/chart: {{ template "common.chart" . }}
{{- end -}}

{{/*  Controller  */}}
{{- define "controller.fullname" -}}
vsphere-csi-controller
{{- end -}}

{{- define "controller.labels" -}}
app.kubernetes.io/name: vsphere-csi-controller
{{- end -}}

{{/*  Node  */}}
{{- define "node.fullname" -}}
vsphere-csi-node
{{- end -}}

{{- define "node.labels" -}}
app.kubernetes.io/name: vsphere-csi-node
{{- end -}}
