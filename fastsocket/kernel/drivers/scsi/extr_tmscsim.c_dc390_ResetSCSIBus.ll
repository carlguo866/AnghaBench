; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_ResetSCSIBus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_ResetSCSIBus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc390_acb = type { i64 }

@ScsiCmd = common dso_local global i32 0, align 4
@CLEAR_FIFO_CMD = common dso_local global i32 0, align 4
@DMA_Cmd = common dso_local global i32 0, align 4
@DMA_IDLE_CMD = common dso_local global i32 0, align 4
@RST_SCSI_BUS_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc390_acb*)* @dc390_ResetSCSIBus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc390_ResetSCSIBus(%struct.dc390_acb* %0) #0 {
  %2 = alloca %struct.dc390_acb*, align 8
  store %struct.dc390_acb* %0, %struct.dc390_acb** %2, align 8
  %3 = load i32, i32* @ScsiCmd, align 4
  %4 = load i32, i32* @CLEAR_FIFO_CMD, align 4
  %5 = call i32 @DC390_write8(i32 %3, i32 %4)
  %6 = load i32, i32* @DMA_Cmd, align 4
  %7 = load i32, i32* @DMA_IDLE_CMD, align 4
  %8 = call i32 @DC390_write8(i32 %6, i32 %7)
  %9 = load i32, i32* @ScsiCmd, align 4
  %10 = load i32, i32* @RST_SCSI_BUS_CMD, align 4
  %11 = call i32 @DC390_write8(i32 %9, i32 %10)
  %12 = load %struct.dc390_acb*, %struct.dc390_acb** %2, align 8
  %13 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  ret void
}

declare dso_local i32 @DC390_write8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
