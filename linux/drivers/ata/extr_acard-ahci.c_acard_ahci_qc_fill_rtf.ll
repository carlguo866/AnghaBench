; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_acard-ahci.c_acard_ahci_qc_fill_rtf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_acard-ahci.c_acard_ahci_qc_fill_rtf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.ahci_port_priv* }
%struct.ahci_port_priv = type { i64, i32* }

@ACARD_AHCI_RX_FIS_SZ = common dso_local global i32 0, align 4
@ATA_PROT_PIO = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@ATA_QCFLAG_FAILED = common dso_local global i32 0, align 4
@RX_FIS_PIO_SETUP = common dso_local global i32 0, align 4
@RX_FIS_D2H_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @acard_ahci_qc_fill_rtf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acard_ahci_qc_fill_rtf(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ahci_port_priv*, align 8
  %4 = alloca i32*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %5 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %5, i32 0, i32 5
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %8, align 8
  store %struct.ahci_port_priv* %9, %struct.ahci_port_priv** %3, align 8
  %10 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %19 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %18, i32 0, i32 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ACARD_AHCI_RX_FIS_SZ, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32*, i32** %4, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %4, align 8
  br label %30

30:                                               ; preds = %17, %1
  %31 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %32 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ATA_PROT_PIO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %30
  %38 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %39 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %45 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %43
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @RX_FIS_PIO_SETUP, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %56 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %55, i32 0, i32 2
  %57 = call i32 @ata_tf_from_fis(i32* %54, %struct.TYPE_10__* %56)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @RX_FIS_PIO_SETUP, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = getelementptr inbounds i32, i32* %61, i64 15
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %65 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  br label %75

67:                                               ; preds = %43, %37, %30
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* @RX_FIS_D2H_REG, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %73 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %72, i32 0, i32 2
  %74 = call i32 @ata_tf_from_fis(i32* %71, %struct.TYPE_10__* %73)
  br label %75

75:                                               ; preds = %67, %50
  ret i32 1
}

declare dso_local i32 @ata_tf_from_fis(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
