; ModuleID = '/home/carl/AnghaBench/reactos/dll/shellext/deskadp/extr_deskadp.c_GetColorDescription.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/shellext/deskadp/extr_deskadp.c_GetColorDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@IDS_4BPP = common dso_local global i64 0, align 8
@IDS_8BPP = common dso_local global i64 0, align 8
@IDS_15BPP = common dso_local global i64 0, align 8
@IDS_16BPP = common dso_local global i64 0, align 8
@IDS_24BPP = common dso_local global i64 0, align 8
@IDS_32BPP = common dso_local global i64 0, align 8
@hInstance = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @GetColorDescription to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetColorDescription(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %24 [
    i32 4, label %12
    i32 8, label %14
    i32 15, label %16
    i32 16, label %18
    i32 24, label %20
    i32 32, label %22
  ]

12:                                               ; preds = %3
  %13 = load i64, i64* @IDS_4BPP, align 8
  store i64 %13, i64* %8, align 8
  br label %24

14:                                               ; preds = %3
  %15 = load i64, i64* @IDS_8BPP, align 8
  store i64 %15, i64* %8, align 8
  br label %24

16:                                               ; preds = %3
  %17 = load i64, i64* @IDS_15BPP, align 8
  store i64 %17, i64* %8, align 8
  br label %24

18:                                               ; preds = %3
  %19 = load i64, i64* @IDS_16BPP, align 8
  store i64 %19, i64* %8, align 8
  br label %24

20:                                               ; preds = %3
  %21 = load i64, i64* @IDS_24BPP, align 8
  store i64 %21, i64* %8, align 8
  br label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @IDS_32BPP, align 8
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %3, %22, %20, %18, %16, %14, %12
  %25 = load i64, i64* %8, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @hInstance, align 4
  %29 = load i64, i64* %8, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @LoadString(i32 %28, i64 %29, i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27, %24
  %35 = call i32 @TEXT(i8 signext 0)
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @LoadString(i32, i64, i32*, i32) #1

declare dso_local i32 @TEXT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
