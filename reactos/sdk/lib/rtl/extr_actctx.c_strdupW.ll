; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_strdupW.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_strdupW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @strdupW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @strdupW(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call i32 (...) @RtlGetProcessHeap()
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @strlenW(i32* %6)
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = call i32* @RtlAllocateHeap(i32 %5, i32 0, i32 %11)
  store i32* %12, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @strcpyW(i32* %16, i32* %17)
  store i32* %18, i32** %2, align 8
  br label %19

19:                                               ; preds = %15, %14
  %20 = load i32*, i32** %2, align 8
  ret i32* %20
}

declare dso_local i32* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32* @strcpyW(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
