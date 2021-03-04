# -*- coding: utf-8 -*-
# vim: ft=yaml
---
lynis:
  config:
    profiles:
      foo:
        skip-test:
          - name: LYNIS
            description: This release is more than 4 months old. Consider upgrading
            reason: We wait for new Debian package
      bar:
        skip-test:
          - name: KRNL-5788
            description: Determine why /vmlinuz or /boot/vmlinuz is missing on this
                         Debian/Ubuntu system
            reason: This is OVH kernel

          - name: 'KRNL-6000:net.ipv4.conf.all.log_martians'
            description: 'net.ipv4.conf.all.log_martians (exp: 1)'
            reason: What for?
  portage_config_flags:
    accept_keywords:
      - '~amd64'
