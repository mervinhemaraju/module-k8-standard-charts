{{/*
Expand the name of the chart.
*/}}
{{- define "plagueworks-k8-standard-charts.name" -}}
{{- default .Chart.Name .Values.name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "plagueworks-k8-standard-charts.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.name }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "plagueworks-k8-standard-charts.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "plagueworks-k8-standard-charts.labels" -}}
helm.sh/chart: {{ include "plagueworks-k8-standard-charts.chart" . }}
{{ include "plagueworks-k8-standard-charts.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- with .Values.commonLabels }}
{{ toYaml . }}
{{- end }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "plagueworks-k8-standard-charts.selectorLabels" -}}
app.kubernetes.io/name: {{ include "plagueworks-k8-standard-charts.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: {{ include "plagueworks-k8-standard-charts.name" . }}
{{- end }}

{{/*
Common annotations
*/}}
{{- define "plagueworks-k8-standard-charts.annotations" -}}
{{- with .Values.commonAnnotations }}
{{ toYaml . }}
{{- end }}
{{- end }}

{{/*
Namespace name
*/}}
{{- define "plagueworks-k8-standard-charts.namespace" -}}
{{- if .Values.namespace.name }}
{{- .Values.namespace.name }}
{{- else }}
{{- include "plagueworks-k8-standard-charts.name" . }}
{{- end }}
{{- end }}

{{/*
Container name - uses the app name
*/}}
{{- define "plagueworks-k8-standard-charts.containerName" -}}
{{- include "plagueworks-k8-standard-charts.name" . }}
{{- end }}

{{/*
Image string
*/}}
{{- define "plagueworks-k8-standard-charts.image" -}}
{{- $tag := .Values.image.tag | default .Chart.AppVersion }}
{{- printf "%s:%s" .Values.image.repository $tag }}
{{- end }}

{{/*
Service target port
*/}}
{{- define "plagueworks-k8-standard-charts.serviceTargetPort" -}}
{{- .Values.service.targetPort | default .Values.port }}
{{- end }}
