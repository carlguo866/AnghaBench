; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas.c_rtas_get_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas.c_rtas_get_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"get-sensor-state\00", align 1
@RTAS_UNKNOWN_SERVICE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtas_get_sensor(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = call i32 @rtas_token(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @RTAS_UNKNOWN_SERVICE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %36

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %24, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @rtas_call(i32 %19, i32 2, i32 2, i32* %20, i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @rtas_busy_delay(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %18, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @rtas_error_rc(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %31, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @rtas_token(i8*) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @rtas_busy_delay(i32) #1

declare dso_local i32 @rtas_error_rc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
