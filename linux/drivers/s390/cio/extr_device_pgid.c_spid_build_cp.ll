; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_spid_build_cp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device_pgid.c_spid_build_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.ccw_request }
%struct.TYPE_4__ = type { %struct.pgid*, %struct.ccw1* }
%struct.pgid = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ccw1 = type { i32, i32, i64, i32 }
%struct.ccw_request = type { %struct.ccw1*, i32 }

@CCW_CMD_SET_PGID = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32)* @spid_build_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spid_build_cp(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccw_request*, align 8
  %6 = alloca %struct.ccw1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pgid*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store %struct.ccw_request* %12, %struct.ccw_request** %5, align 8
  %13 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %14 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.ccw1*, %struct.ccw1** %18, align 8
  store %struct.ccw1* %19, %struct.ccw1** %6, align 8
  %20 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %21 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pathmask_to_pos(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %25 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.pgid*, %struct.pgid** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.pgid, %struct.pgid* %30, i64 %32
  store %struct.pgid* %33, %struct.pgid** %8, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.pgid*, %struct.pgid** %8, align 8
  %36 = getelementptr inbounds %struct.pgid, %struct.pgid* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @CCW_CMD_SET_PGID, align 4
  %39 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %40 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.pgid*, %struct.pgid** %8, align 8
  %42 = ptrtoint %struct.pgid* %41 to i64
  %43 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %44 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %46 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %45, i32 0, i32 0
  store i32 4, i32* %46, align 8
  %47 = load i32, i32* @CCW_FLAG_SLI, align 4
  %48 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %49 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %51 = load %struct.ccw_request*, %struct.ccw_request** %5, align 8
  %52 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %51, i32 0, i32 0
  store %struct.ccw1* %50, %struct.ccw1** %52, align 8
  ret void
}

declare dso_local i32 @pathmask_to_pos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
