; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_mempool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince-stub.c_mempool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mempool.outn = internal global i32 -1, align 4
@mempool.outs = internal global [4 x i32*] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @mempool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mempool(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @mempool.outn, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @mempool.outn, align 4
  %5 = sext i32 %4 to i64
  %6 = icmp uge i64 %5, 4
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* @mempool.outn, align 4
  br label %8

8:                                                ; preds = %7, %1
  %9 = load i32, i32* @mempool.outn, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i32*], [4 x i32*]* @mempool.outs, i64 0, i64 %10
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i32, i32* @mempool.outn, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i32*], [4 x i32*]* @mempool.outs, i64 0, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @FREE(i32* %18)
  br label %20

20:                                               ; preds = %14, %8
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @MALLOC(i32 %21)
  %23 = inttoptr i64 %22 to i32*
  %24 = load i32, i32* @mempool.outn, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i32*], [4 x i32*]* @mempool.outs, i64 0, i64 %25
  store i32* %23, i32** %26, align 8
  %27 = load i32, i32* @mempool.outn, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i32*], [4 x i32*]* @mempool.outs, i64 0, i64 %28
  %30 = load i32*, i32** %29, align 8
  ret i32* %30
}

declare dso_local i32 @FREE(i32*) #1

declare dso_local i64 @MALLOC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
