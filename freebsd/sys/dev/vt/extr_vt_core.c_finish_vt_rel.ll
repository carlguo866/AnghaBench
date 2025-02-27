; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_finish_vt_rel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_finish_vt_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_window = type { i32, i32, i32 }

@VWF_SWWAIT_REL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_window*, i32, i32*)* @finish_vt_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_vt_rel(%struct.vt_window* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vt_window*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.vt_window* %0, %struct.vt_window** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %9 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @VWF_SWWAIT_REL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load i32, i32* @VWF_SWWAIT_REL, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %18 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %25 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %24, i32 0, i32 2
  %26 = call i32 @callout_drain(i32* %25)
  %27 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %28 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vt_late_window_switch(i32 %29)
  br label %31

31:                                               ; preds = %23, %14
  store i32 0, i32* %4, align 4
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @vt_late_window_switch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
