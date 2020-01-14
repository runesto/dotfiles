# Shortcuts for changing environment in Ruter
function eks-prod() {
        export AWS_DEFAULT_PROFILE=ruter_prod_eks-gp
        export KUBECONFIG=~/.kubeconfig/ruter_config-prod_eks-gp
}

function eks-devops() {
        export AWS_DEFAULT_PROFILE=ruter_devops
        export KUBECONFIG=~/.kubeconfig/ruter_config-devops
}

function eks-test() {
        export AWS_DEFAULT_PROFILE=ruter_test
        export KUBECONFIG=~/.kubeconfig/ruter_config-test
}

function eks-team-admin-taas() {
        export AWS_DEFAULT_PROFILE=ruter_eks_team_admin_taas
        export KUBECONFIG=
}

function eks-cmp-dev() {
        export AWS_DEFAULT_PROFILE=ruter_eks-dev-gp
        export KUBECONFIG=~/.kubeconfig/ruter_config-cmp_dev-gp
}

function eks-cmp-stage() {
        export AWS_DEFAULT_PROFILE=ruter_eks-stage-gp
        export KUBECONFIG=~/.kubeconfig/ruter_config-cmp_stage-gp
}

function eks-cmp-prod() {
        export AWS_DEFAULT_PROFILE=ruter_eks-prod-gp
        export KUBECONFIG=~/.kubeconfig/ruter_config-cmp_prod-gp
}

eks-devops