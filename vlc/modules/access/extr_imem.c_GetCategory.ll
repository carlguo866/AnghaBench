; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_imem.c_GetCategory.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_imem.c_GetCategory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"imem-cat\00", align 1
@AUDIO_ES = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@SPU_ES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid ES category\00", align 1
@UNKNOWN_ES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @GetCategory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetCategory(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @var_InheritInteger(i32* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %14 [
    i32 1, label %8
    i32 2, label %10
    i32 3, label %12
    i32 4, label %17
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @AUDIO_ES, align 4
  store i32 %9, i32* %2, align 4
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @VIDEO_ES, align 4
  store i32 %11, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @SPU_ES, align 4
  store i32 %13, i32* %2, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @msg_Err(i32* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %1, %14
  %18 = load i32, i32* @UNKNOWN_ES, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %12, %10, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @var_InheritInteger(i32*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
