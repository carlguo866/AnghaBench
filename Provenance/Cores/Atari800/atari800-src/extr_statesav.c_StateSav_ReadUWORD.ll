; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_statesav.c_StateSav_ReadUWORD.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_statesav.c_StateSav_ReadUWORD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StateFile = common dso_local global i32 0, align 4
@nFileError = common dso_local global i64 0, align 8
@Z_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StateSav_ReadUWORD(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @StateFile, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i64, i64* @nFileError, align 8
  %11 = load i64, i64* @Z_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  br label %39

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %30, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load i32, i32* @StateFile, align 4
  %20 = call i64 @GZREAD(i32 %19, i32* %5, i32 1)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 (...) @GetGZErrorText()
  br label %39

24:                                               ; preds = %18
  %25 = load i32, i32* @StateFile, align 4
  %26 = call i64 @GZREAD(i32 %25, i32* %6, i32 1)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (...) @GetGZErrorText()
  br label %39

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 %31, 8
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %32, %33
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %3, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %4, align 4
  br label %15

39:                                               ; preds = %13, %28, %22, %15
  ret void
}

declare dso_local i64 @GZREAD(i32, i32*, i32) #1

declare dso_local i32 @GetGZErrorText(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
