; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_apm_32.c_get_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_apm_32.c_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APM_NO_EVENTS = common dso_local global i32 0, align 4
@get_event.notified = internal global i32 0, align 4
@APM_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"get_event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_event() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @APM_NO_EVENTS, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 @apm_get_event(i32* %3, i32* %4)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @APM_SUCCESS, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %1, align 4
  br label %24

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @APM_NO_EVENTS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* @get_event.notified, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @get_event.notified, align 4
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @apm_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %16, %12
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %23, %10
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @apm_get_event(i32*, i32*) #1

declare dso_local i32 @apm_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
