; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_xmit_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_xmit_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i32, i32 }
%struct.hpsb_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.hpsb_iso*, i32, i32)* }

@HPSB_ISO_XMIT = common dso_local global i32 0, align 4
@HPSB_ISO_DMA_DEFAULT = common dso_local global i32 0, align 4
@XMIT_INIT = common dso_local global i32 0, align 4
@HPSB_ISO_DRIVER_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpsb_iso* @hpsb_iso_xmit_init(%struct.hpsb_host* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, void (%struct.hpsb_iso*)* %6) #0 {
  %8 = alloca %struct.hpsb_iso*, align 8
  %9 = alloca %struct.hpsb_host*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca void (%struct.hpsb_iso*)*, align 8
  %16 = alloca %struct.hpsb_iso*, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store void (%struct.hpsb_iso*)* %6, void (%struct.hpsb_iso*)** %15, align 8
  %17 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %18 = load i32, i32* @HPSB_ISO_XMIT, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @HPSB_ISO_DMA_DEFAULT, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load void (%struct.hpsb_iso*)*, void (%struct.hpsb_iso*)** %15, align 8
  %25 = call %struct.hpsb_iso* @hpsb_iso_common_init(%struct.hpsb_host* %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, void (%struct.hpsb_iso*)* %24)
  store %struct.hpsb_iso* %25, %struct.hpsb_iso** %16, align 8
  %26 = load %struct.hpsb_iso*, %struct.hpsb_iso** %16, align 8
  %27 = icmp ne %struct.hpsb_iso* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %7
  store %struct.hpsb_iso* null, %struct.hpsb_iso** %8, align 8
  br label %53

29:                                               ; preds = %7
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.hpsb_iso*, %struct.hpsb_iso** %16, align 8
  %32 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %34 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64 (%struct.hpsb_iso*, i32, i32)*, i64 (%struct.hpsb_iso*, i32, i32)** %36, align 8
  %38 = load %struct.hpsb_iso*, %struct.hpsb_iso** %16, align 8
  %39 = load i32, i32* @XMIT_INIT, align 4
  %40 = call i64 %37(%struct.hpsb_iso* %38, i32 %39, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %50

43:                                               ; preds = %29
  %44 = load i32, i32* @HPSB_ISO_DRIVER_INIT, align 4
  %45 = load %struct.hpsb_iso*, %struct.hpsb_iso** %16, align 8
  %46 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.hpsb_iso*, %struct.hpsb_iso** %16, align 8
  store %struct.hpsb_iso* %49, %struct.hpsb_iso** %8, align 8
  br label %53

50:                                               ; preds = %42
  %51 = load %struct.hpsb_iso*, %struct.hpsb_iso** %16, align 8
  %52 = call i32 @hpsb_iso_shutdown(%struct.hpsb_iso* %51)
  store %struct.hpsb_iso* null, %struct.hpsb_iso** %8, align 8
  br label %53

53:                                               ; preds = %50, %43, %28
  %54 = load %struct.hpsb_iso*, %struct.hpsb_iso** %8, align 8
  ret %struct.hpsb_iso* %54
}

declare dso_local %struct.hpsb_iso* @hpsb_iso_common_init(%struct.hpsb_host*, i32, i32, i32, i32, i32, i32, void (%struct.hpsb_iso*)*) #1

declare dso_local i32 @hpsb_iso_shutdown(%struct.hpsb_iso*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
