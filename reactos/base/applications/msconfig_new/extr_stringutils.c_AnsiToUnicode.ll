; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig_new/extr_stringutils.c_AnsiToUnicode.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig_new/extr_stringutils.c_AnsiToUnicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4
@MB_PRECOMPOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @AnsiToUnicode(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %31

9:                                                ; preds = %1
  %10 = load i32, i32* @CP_ACP, align 4
  %11 = load i32, i32* @MB_PRECOMPOSED, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @MultiByteToWideChar(i32 %10, i32 %11, i32 %12, i32 -1, i32* null, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i64 @MemAlloc(i32 0, i32 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %9
  store i32* null, i32** %2, align 8
  br label %31

23:                                               ; preds = %9
  %24 = load i32, i32* @CP_ACP, align 4
  %25 = load i32, i32* @MB_PRECOMPOSED, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @MultiByteToWideChar(i32 %24, i32 %25, i32 %26, i32 -1, i32* %27, i32 %28)
  %30 = load i32*, i32** %4, align 8
  store i32* %30, i32** %2, align 8
  br label %31

31:                                               ; preds = %23, %22, %8
  %32 = load i32*, i32** %2, align 8
  ret i32* %32
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @MemAlloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
