; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_stateretrycb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_dvd.c___dvd_stateretrycb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@__dvd_executing = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__dvd_stateretrycb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dvd_stateretrycb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__dvd_executing, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 -1, i32* %7, align 4
  %8 = call i32 (...) @__dvd_statetimeout()
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 2
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @__dvd_stateerror(i32 19088743)
  br label %15

15:                                               ; preds = %13, %9
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__dvd_executing, align 8
  %20 = call i32 @__dvd_statebusy(%struct.TYPE_3__* %19)
  br label %21

21:                                               ; preds = %5, %18, %15
  ret void
}

declare dso_local i32 @__dvd_statetimeout(...) #1

declare dso_local i32 @__dvd_stateerror(i32) #1

declare dso_local i32 @__dvd_statebusy(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
