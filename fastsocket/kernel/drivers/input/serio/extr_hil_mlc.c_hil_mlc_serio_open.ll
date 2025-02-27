; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hil_mlc.c_hil_mlc_serio_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hil_mlc.c_hil_mlc_serio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.hil_mlc_serio_map* }
%struct.hil_mlc_serio_map = type { %struct.hil_mlc* }
%struct.hil_mlc = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*)* @hil_mlc_serio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hil_mlc_serio_open(%struct.serio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serio*, align 8
  %4 = alloca %struct.hil_mlc_serio_map*, align 8
  %5 = alloca %struct.hil_mlc*, align 8
  store %struct.serio* %0, %struct.serio** %3, align 8
  %6 = load %struct.serio*, %struct.serio** %3, align 8
  %7 = call i32* @serio_get_drvdata(%struct.serio* %6)
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.serio*, %struct.serio** %3, align 8
  %14 = getelementptr inbounds %struct.serio, %struct.serio* %13, i32 0, i32 0
  %15 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %14, align 8
  store %struct.hil_mlc_serio_map* %15, %struct.hil_mlc_serio_map** %4, align 8
  %16 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %4, align 8
  %17 = icmp eq %struct.hil_mlc_serio_map* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %4, align 8
  %21 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %20, i32 0, i32 0
  %22 = load %struct.hil_mlc*, %struct.hil_mlc** %21, align 8
  store %struct.hil_mlc* %22, %struct.hil_mlc** %5, align 8
  %23 = load %struct.hil_mlc*, %struct.hil_mlc** %5, align 8
  %24 = icmp eq %struct.hil_mlc* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %12, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
