; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_ports.c__IsLegacyPort.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/monitors/localmon/extr_ports.c__IsLegacyPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @_IsLegacyPort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_IsLegacyPort(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 3, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  store i32* %8, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @_wcsnicmp(i32* %9, i32* %10, i32 3)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  store i32* %17, i32** %7, align 8
  br label %18

18:                                               ; preds = %28, %15
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 48
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 57
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ false, %18 ], [ %25, %22 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %7, align 8
  br label %18

31:                                               ; preds = %26
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 58
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %44

37:                                               ; preds = %31
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %37, %35, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @_wcsnicmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
