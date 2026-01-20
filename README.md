# plagueworks-k8-standard-charts

![Version: 1.2.0](https://img.shields.io/badge/Version-1.2.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.2.0](https://img.shields.io/badge/AppVersion-1.2.0-informational?style=flat-square)

A Helm library chart for deploying standard Kubernetes applications

**Homepage:** <https://github.com/mervinhemaraju/module-k8-standard-charts>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Mervin Hemaraju | <mervinhemaraju16@gmail.com> |  |

## Source Code

* <https://github.com/mervinhemaraju/module-k8-standard-charts>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity rules (raw affinity spec, overrides nodeAffinity and podAntiAffinity) |
| args | list | `[]` | Args override |
| command | list | `[]` | Command override |
| commonAnnotations | object | `{}` | Common annotations applied to all resources |
| commonLabels | object | `{}` | Common labels applied to all resources |
| deployment | object | `{"annotations":{},"enabled":true,"imagePullSecrets":[],"podAnnotations":{},"podLabels":{},"podSecurityContext":{},"revisionHistoryLimit":3,"securityContext":{},"serviceAccountName":"","strategy":{"rollingUpdate":{"maxSurge":1,"maxUnavailable":0},"type":"RollingUpdate"},"terminationGracePeriodSeconds":30}` | Deployment configuration |
| deployment.annotations | object | `{}` | Deployment annotations |
| deployment.enabled | bool | `true` | Enable deployment |
| deployment.imagePullSecrets | list | `[]` | Image pull secrets |
| deployment.podAnnotations | object | `{}` | Pod annotations |
| deployment.podLabels | object | `{}` | Pod labels |
| deployment.podSecurityContext | object | `{}` | Pod security context |
| deployment.revisionHistoryLimit | int | `3` | Revision history limit |
| deployment.securityContext | object | `{}` | Container security context |
| deployment.serviceAccountName | string | `""` | Service account name |
| deployment.strategy | object | `{"rollingUpdate":{"maxSurge":1,"maxUnavailable":0},"type":"RollingUpdate"}` | Deployment strategy |
| deployment.terminationGracePeriodSeconds | int | `30` | Termination grace period in seconds |
| env | list | `[]` | Environment variables |
| envFrom | list | `[]` | Environment variables from ConfigMaps or Secrets |
| healthChecks | object | `{"enabled":true,"liveness":{"enabled":true,"failureThreshold":3,"initialDelaySeconds":15,"path":"/health","periodSeconds":20,"port":null,"successThreshold":1,"timeoutSeconds":5},"readiness":{"enabled":true,"failureThreshold":3,"initialDelaySeconds":5,"path":"/health","periodSeconds":10,"port":null,"successThreshold":1,"timeoutSeconds":3},"startup":{"enabled":false,"failureThreshold":30,"initialDelaySeconds":0,"path":"/health","periodSeconds":10,"port":null,"successThreshold":1,"timeoutSeconds":3}}` | Health checks configuration |
| healthChecks.enabled | bool | `true` | Enable health checks |
| healthChecks.liveness | object | `{"enabled":true,"failureThreshold":3,"initialDelaySeconds":15,"path":"/health","periodSeconds":20,"port":null,"successThreshold":1,"timeoutSeconds":5}` | Liveness probe configuration |
| healthChecks.liveness.failureThreshold | int | `3` | Number of failures before marking unhealthy |
| healthChecks.liveness.initialDelaySeconds | int | `15` | Initial delay before starting probes |
| healthChecks.liveness.path | string | `"/health"` | HTTP path for health check |
| healthChecks.liveness.periodSeconds | int | `20` | Period between probes |
| healthChecks.liveness.port | string | `nil` | Port for health check (defaults to .Values.port) |
| healthChecks.liveness.successThreshold | int | `1` | Number of successes to mark healthy |
| healthChecks.liveness.timeoutSeconds | int | `5` | Timeout for probe |
| healthChecks.readiness | object | `{"enabled":true,"failureThreshold":3,"initialDelaySeconds":5,"path":"/health","periodSeconds":10,"port":null,"successThreshold":1,"timeoutSeconds":3}` | Readiness probe configuration |
| healthChecks.readiness.failureThreshold | int | `3` | Number of failures before marking not ready |
| healthChecks.readiness.initialDelaySeconds | int | `5` | Initial delay before starting probes |
| healthChecks.readiness.path | string | `"/health"` | HTTP path for health check |
| healthChecks.readiness.periodSeconds | int | `10` | Period between probes |
| healthChecks.readiness.port | string | `nil` | Port for health check (defaults to .Values.port) |
| healthChecks.readiness.successThreshold | int | `1` | Number of successes to mark ready |
| healthChecks.readiness.timeoutSeconds | int | `3` | Timeout for probe |
| healthChecks.startup | object | `{"enabled":false,"failureThreshold":30,"initialDelaySeconds":0,"path":"/health","periodSeconds":10,"port":null,"successThreshold":1,"timeoutSeconds":3}` | Startup probe configuration |
| image | object | `{"pullPolicy":"Always","repository":"","tag":""}` | Container image configuration |
| image.pullPolicy | string | `"Always"` | Image pull policy |
| image.repository | string | `""` | Image repository |
| image.tag | string | `""` | Image tag (defaults to chart appVersion) |
| ingress | object | `{"annotations":{},"enabled":false,"entryPoints":["websecure"],"externalDns":{"cloudflareComment":"","cloudflareProxied":"true","enabled":false,"target":""},"host":"","match":"","middlewares":[],"tls":{"certResolver":"le","enabled":true}}` | Traefik IngressRoute configuration |
| ingress.annotations | object | `{}` | Additional annotations for ingress Example:   kubernetes.io/ingress.class: traefik   cert-manager.io/cluster-issuer: letsencrypt |
| ingress.enabled | bool | `false` | Enable ingress |
| ingress.entryPoints | list | `["websecure"]` | Entry points |
| ingress.externalDns | object | `{"cloudflareComment":"","cloudflareProxied":"true","enabled":false,"target":""}` | External DNS configuration |
| ingress.externalDns.cloudflareComment | string | `""` | Comment for Cloudflare |
| ingress.externalDns.cloudflareProxied | string | `"true"` | Enable Cloudflare proxy |
| ingress.externalDns.enabled | bool | `false` | Enable external-dns annotations |
| ingress.externalDns.target | string | `""` | Target for external-dns |
| ingress.host | string | `""` | Hostname for the ingress |
| ingress.match | string | `""` | Match rule (defaults to Host(`<host>`)) |
| ingress.middlewares | list | `[]` | Middlewares to apply Example:   - name: rate-limit     namespace: traefik |
| ingress.tls | object | `{"certResolver":"le","enabled":true}` | TLS configuration |
| ingress.tls.certResolver | string | `"le"` | Cert resolver name |
| ingress.tls.enabled | bool | `true` | Enable TLS |
| name | string | `""` | Application name (required) |
| namespace | object | `{"annotations":{},"create":true,"labels":{},"name":""}` | Namespace configuration |
| namespace.annotations | object | `{}` | Annotations for namespace |
| namespace.create | bool | `true` | Create namespace if it doesn't exist |
| namespace.labels | object | `{}` | Additional labels for namespace |
| namespace.name | string | `""` | Namespace name (defaults to .Values.name if not set) |
| nodeAffinity | object | `{"enabled":false,"preferred":[],"required":[]}` | Node affinity configuration (convenience wrapper) |
| nodeAffinity.enabled | bool | `false` | Enable node affinity |
| nodeAffinity.preferred | list | `[]` | Preferred during scheduling (soft requirement) Example:   - key: node-type     operator: In     values:       - compute     weight: 100 |
| nodeAffinity.required | list | `[]` | Required during scheduling (hard requirement) Example:   - key: kubernetes.io/arch     operator: In     values:       - amd64 |
| nodeSelector | object | `{}` | Node selector |
| podAntiAffinity | object | `{"enabled":false,"topologyKey":"kubernetes.io/hostname","type":"soft"}` | Pod anti-affinity to spread pods across nodes |
| podAntiAffinity.enabled | bool | `false` | Enable pod anti-affinity |
| podAntiAffinity.topologyKey | string | `"kubernetes.io/hostname"` | Topology key for anti-affinity |
| podAntiAffinity.type | string | `"soft"` | Type: soft or hard |
| port | int | `8080` | Container port |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{"limits":{"cpu":"200m","memory":"256Mi"},"requests":{"cpu":"100m","memory":"128Mi"}}` | Resource limits and requests |
| service | object | `{"annotations":{},"enabled":true,"labels":{},"nodePort":null,"port":80,"protocol":"TCP","targetPort":null,"type":"ClusterIP"}` | Service configuration |
| service.annotations | object | `{}` | Additional service annotations |
| service.enabled | bool | `true` | Enable service |
| service.labels | object | `{}` | Additional service labels |
| service.nodePort | string | `nil` | Node port (only for NodePort type) |
| service.port | int | `80` | Service port |
| service.protocol | string | `"TCP"` | Protocol |
| service.targetPort | string | `nil` | Target port (defaults to .Values.port) |
| service.type | string | `"ClusterIP"` | Service type (ClusterIP, NodePort, LoadBalancer) |
| tolerations | list | `[]` | Tolerations |
| volumeMounts | list | `[]` | Volume mounts for the container |
| volumes | list | `[]` | Volumes for the pod |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
