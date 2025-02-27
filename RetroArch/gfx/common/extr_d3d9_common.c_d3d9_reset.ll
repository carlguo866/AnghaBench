; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d9_common.c_d3d9_reset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d9_common.c_d3d9_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"[D3D]: Attempting to recover from dead state...\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DEVICELOST\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"DEVICENOTRESET\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"DRIVERINTERNALERROR\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"[D3D]: recovering from dead state: (%s).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3d9_reset(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i32*
  %10 = call i64 @d3d9_reset_internal(i8* %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @RARCH_WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @d3d9_test_cooperative_level(i8* %15)
  switch i32 %16, label %20 [
    i32 130, label %17
    i32 129, label %18
    i32 128, label %19
  ]

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %21

18:                                               ; preds = %13
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %21

19:                                               ; preds = %13
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %21

20:                                               ; preds = %13
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %21

21:                                               ; preds = %20, %19, %18, %17
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 (i8*, ...) @RARCH_WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @d3d9_reset_internal(i8*, i32*) #1

declare dso_local i32 @RARCH_WARN(i8*, ...) #1

declare dso_local i32 @d3d9_test_cooperative_level(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
