; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_start_handshake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_start_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"START HANDSHAKE\0A\00", align 1
@VIO_HS_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*)* @start_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_handshake(%struct.vio_driver_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vio_driver_state*, align 8
  %4 = alloca i32, align 4
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %3, align 8
  %5 = load i32, i32* @HS, align 4
  %6 = call i32 @viodbg(i32 %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @VIO_HS_INVALID, align 4
  %8 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %9 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %11 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %12 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %18 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @send_version(%struct.vio_driver_state* %10, i32 %16, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @viodbg(i32, i8*) #1

declare dso_local i32 @send_version(%struct.vio_driver_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
