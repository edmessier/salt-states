mdadm:
  pkg:
    - installed

/dev/md/0:
  raid.present:
    - opts:
      - level=1
      - raid-devices=3
      - /dev/sdb
      - /dev/sdc
      - /dev/sdd

/media/storage:
  mount.mounted:
    - device: /dev/md0
    - fstype: xfs
    - mkmnt: True
    - opts:
      - defaults
    - require:
      - raid: /dev/md/0
