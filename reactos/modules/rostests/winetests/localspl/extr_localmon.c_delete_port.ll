; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_delete_port.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_delete_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hXcv = common dso_local global i32 0, align 4
@cmd_DeletePortW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @delete_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_port(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  br i1 true, label %4, label %7

4:                                                ; preds = %1
  %5 = load i64, i64* %2, align 8
  %6 = call i32 @pDeletePort(i32* null, i32 0, i64 %5)
  store i32 %6, i32* %3, align 4
  br label %19

7:                                                ; preds = %1
  %8 = load i32, i32* @hXcv, align 4
  %9 = load i32, i32* @cmd_DeletePortW, align 4
  %10 = load i64, i64* %2, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @lstrlenW(i64 %12)
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i32 @pXcvDataPort(i32 %8, i32 %9, i32 %11, i32 %17, i32* null, i32 0, i32* null)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %7, %4
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @pDeletePort(i32*, i32, i64) #1

declare dso_local i32 @pXcvDataPort(i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @lstrlenW(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
