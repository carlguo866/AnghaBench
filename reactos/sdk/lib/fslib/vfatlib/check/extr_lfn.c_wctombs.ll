; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_lfn.c_wctombs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_lfn.c_wctombs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32)* @wctombs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wctombs(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %11 = call i64 @wcstombs(i8* null, i32* %10, i64 0)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %17, 1
  %19 = call i64 @wcstombs(i8* %15, i32* %16, i64 %18)
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i64, i64* %6, align 8
  ret i64 %21
}

declare dso_local i64 @wcstombs(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
