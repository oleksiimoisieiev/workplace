#!/bin/bash


f() {

   cat $1 >> ./target.dts

}

cat mta-agrisic-dom0.dts > ./target.dts



f mta-agrisic.dts

f imx8qm-xen.dtsi

f imx8qm.dtsi

f imx8-ss-security.dtsi

f imx8-ss-cm41.dtsi

f imx8-ss-adma.dtsi

f imx8-ss-conn.dtsi

f imx8-ss-ddr.dtsi

f imx8-ss-lsio.dtsi

f imx8-ss-hsio.dtsi

f imx8-ss-img.dtsi

f imx8-ss-dc0.dtsi

f imx8-ss-dc1.dtsi

f imx8-ss-gpu0.dtsi

f imx8-ss-gpu1.dtsi

f imx8-ss-vpu.dtsi

f imx8qm-ss-audio.dtsi

f imx8qm-ss-dma.dtsi

f imx8qm-ss-conn.dtsi

f imx8qm-ss-ddr.dtsi

f imx8qm-ss-lsio.dtsi

f imx8qm-ss-hsio.dtsi

f imx8qm-ss-dc.dtsi

f imx8qm-ss-lvds.dtsi

f imx8qm-ss-mipi.dtsi

f imx8qm-ss-hdmi.dtsi

f imx8qm-ss-hdmi-rx.dtsi

f imx8qm-ss-img.dtsi

f imx8qm-ss-gpu.dtsi

f imx8-ss-audio.dtsi

f imx8-ss-dma.dtsi
