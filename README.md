# Demo Red Hat Advanced Developer Suite on OpenShift

This demo has been created to follow the [demo for Red Hat Advanced Developer Suite
on the Red Hat OpenShift platform](https://catalog.demo.redhat.com/catalog?item=babylon-catalog-prod/pert.redhat-rhads.prod&utm_source=webapp&utm_medium=share-link).  

The following automates the configuration of prerequisites and is specifically intended for
users with `cluster-admin` or an operations team.

> [!NOTE]
> Verify your permissions if you experience errors.

## Prerequisites

- Red Hat OpenShift 4.18+
- OpenShift Web Terminal (see below for installation instructions)
- OpenShift `cluster-admin` permissions

## Install the [OpenShift Web Terminal](https://docs.openshift.com/container-platform/4.12/web_console/web_terminal/installing-web-terminal.html)

> [!NOTE]
> The following icon should appear in the top right of the OpenShift web console after you have installed the operator. Clicking this icon launches the web terminal.

![Web Terminal](docs/images/web-terminal.png "Web Terminal")

NOTE: Reload the page in your browser if you do not see the icon after installing the operator.

## Demo - Quick Start

> [!IMPORTANT]
> Run the following commands from the enhanced web terminal.
>
> `cluster-admin` is required

```sh
# apply the enhanced (OpenShift) web terminal
oc apply -k https://github.com/codekow/demo-rhads/demo/web-terminal

# delete old web terminal
$(wtoctl | grep 'oc delete')
```

## Additional Info
