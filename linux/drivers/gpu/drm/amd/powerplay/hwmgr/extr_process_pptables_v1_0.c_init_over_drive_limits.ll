; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_process_pptables_v1_0.c_init_over_drive_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_process_pptables_v1_0.c_init_over_drive_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_7__*)* @init_over_drive_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_over_drive_limits(%struct.pp_hwmgr* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @le32_to_cpu(i32 %7)
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i8* %8, i8** %12, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @le32_to_cpu(i32 %15)
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i8* %16, i8** %20, align 8
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %25 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %28 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  ret i32 0
}

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
