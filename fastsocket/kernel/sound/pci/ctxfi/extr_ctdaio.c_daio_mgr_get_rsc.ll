; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_daio_mgr_get_rsc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_daio_mgr_get_rsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc_mgr = type { i64 }
%union.daio_usage = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsc_mgr*, i32)* @daio_mgr_get_rsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daio_mgr_get_rsc(%struct.rsc_mgr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsc_mgr*, align 8
  %5 = alloca i32, align 4
  store %struct.rsc_mgr* %0, %struct.rsc_mgr** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.rsc_mgr*, %struct.rsc_mgr** %4, align 8
  %7 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %union.daio_usage*
  %10 = bitcast %union.daio_usage* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = load %struct.rsc_mgr*, %struct.rsc_mgr** %4, align 8
  %23 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %union.daio_usage*
  %26 = bitcast %union.daio_usage* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %21
  store i32 %28, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %19, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
