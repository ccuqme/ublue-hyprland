ARG BASE_IMAGE_NAME="${BASE_IMAGE_NAME:-base}"
ARG IMAGE_FLAVOR="${IMAGE_FLAVOR:-main}"
ARG SOURCE_IMAGE="${SOURCE_IMAGE:-$BASE_IMAGE_NAME-$IMAGE_FLAVOR}"
ARG BASE_IMAGE="ghcr.io/ublue-os/${SOURCE_IMAGE}"
ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION:-38}"

FROM ${BASE_IMAGE}:${FEDORA_MAJOR_VERSION} AS builder

ARG IMAGE_NAME="${IMAGE_NAME}"
ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION}"

ADD build.sh /tmp/build.sh
ADD post-install.sh /tmp/post-install.sh
ADD packages.json /tmp/packages.json

COPY etc /etc
COPY usr /usr
COPY --from=ghcr.io/ublue-os/config:latest /rpms /tmp/rpms

RUN wget https://copr.fedorainfracloud.org/coprs/solopasha/hyprland/repo/fedora-"${FEDORA_MAJOR_VERSION}"/solopasha-hyprland-fedora-"${FEDORA_MAJOR_VERSION}".repo -O /etc/yum.repos.d/copr-solopasha-hyprland-fedora-"${FEDORA_MAJOR_VERSION}".repo
RUN wget https://copr.fedorainfracloud.org/coprs/erikreider/SwayNotificationCenter/repo/fedora-"${FEDORA_MAJOR_VERSION}"/swaynotificationcenter-fedora-"${FEDORA_MAJOR_VERSION}".repo -O /etc/yum.repos.d/copr-swaynotificationcenter-fedora-"${FEDORA_MAJOR_VERSION}".repo
RUN /tmp/build.sh && \
    pip install --prefix=/usr yafti && \
    systemctl enable getty@tty1 && \
    systemctl enable flatpak-system-update.timer && \
    systemctl --global enable flatpak-user-update.timer && \
    systemctl enable power-profiles-daemon && \
    systemctl enable rpm-ostreed-automatic.timer && \
    systemctl enable sddm && \
    systemctl enable ublue-sddm-workaround
RUN /tmp/post-install.sh
RUN rm -rf /tmp/* /var/*
RUN ostree container commit
RUN mkdir -p /var/tmp && chmod -R 1777 /var/tmp