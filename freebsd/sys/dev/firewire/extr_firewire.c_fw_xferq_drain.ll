; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_xferq_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_xferq_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xferq = type { i32, i32 }
%struct.fw_xfer = type { i32, i32 }

@link = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@FWXF_SENTERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_xferq*)* @fw_xferq_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_xferq_drain(%struct.fw_xferq* %0) #0 {
  %2 = alloca %struct.fw_xferq*, align 8
  %3 = alloca %struct.fw_xfer*, align 8
  store %struct.fw_xferq* %0, %struct.fw_xferq** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.fw_xferq*, %struct.fw_xferq** %2, align 8
  %6 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %5, i32 0, i32 1
  %7 = call %struct.fw_xfer* @STAILQ_FIRST(i32* %6)
  store %struct.fw_xfer* %7, %struct.fw_xfer** %3, align 8
  %8 = icmp ne %struct.fw_xfer* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = load %struct.fw_xferq*, %struct.fw_xferq** %2, align 8
  %11 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %10, i32 0, i32 1
  %12 = load i32, i32* @link, align 4
  %13 = call i32 @STAILQ_REMOVE_HEAD(i32* %11, i32 %12)
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = load %struct.fw_xfer*, %struct.fw_xfer** %3, align 8
  %16 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @FWXF_SENTERR, align 4
  %18 = load %struct.fw_xfer*, %struct.fw_xfer** %3, align 8
  %19 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.fw_xfer*, %struct.fw_xfer** %3, align 8
  %21 = call i32 @fw_xfer_done(%struct.fw_xfer* %20)
  br label %4

22:                                               ; preds = %4
  ret void
}

declare dso_local %struct.fw_xfer* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @fw_xfer_done(%struct.fw_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
