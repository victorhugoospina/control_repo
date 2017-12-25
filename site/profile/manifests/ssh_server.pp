class profile::ssh_server {
    package {'openssh-server':
        ensure  =>  present,
    }
    service { 'sshd':
        ensure  =>  'running',
        enable  =>  'true',
    }
    ssh_authorized_key {'root@master.puppet.vm':
        ensure  =>  'present',
        user    =>  'root',
        type    =>  'ssh-rsa',
        key     =>  'AAAAB3NzaC1yc2EAAAADAQABAAABAQCtZk18ttYyQLc81SrGy+K731gaPNwfvEz/zbBothr/coHGDPS0W6byeBJpo/kc93HRnnP2eS/BTjB1gCSF6EBW5NH+ebNdEnRqn+ROsEgT40h6PMVzfNlc8/cRGP52a83h3PGuePb2s/Hgfrt+NDXpG0bQ3nQ1BBT4kmoRKwlL9um4SxE2lB/mOgBxQpGxpcDYFhYx3UQ+vW1E4EyIKPA29wz55Fi0Z+GBD+cjXoDHdm//YFVzEpaifnEbEu68dulaLv/YynAtciztTW9F7RcivPh8LfPeQtkcL1Y5Knma6awNd6rFwUIA/g7cPl2BjcOwVsHnySQZPDgNXX0C0kn1',
    }
}
