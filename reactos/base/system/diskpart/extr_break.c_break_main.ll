; ModuleID = '/home/carl/AnghaBench/reactos/base/system/diskpart/extr_break.c_break_main.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/diskpart/extr_break.c_break_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StdOut = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i32] [i32 10, i32 84, i32 79, i32 68, i32 79, i32 58, i32 32, i32 65, i32 100, i32 100, i32 32, i32 99, i32 111, i32 100, i32 101, i32 32, i32 108, i32 97, i32 116, i32 101, i32 114, i32 32, i32 115, i32 105, i32 110, i32 99, i32 101, i32 32, i32 87, i32 105, i32 110, i32 32, i32 55, i32 32, i32 72, i32 111, i32 109, i32 101, i32 32, i32 80, i32 114, i32 101, i32 109, i32 105, i32 117, i32 109, i32 32, i32 100, i32 111, i32 101, i32 115, i32 110, i32 39, i32 116, i32 32, i32 104, i32 97, i32 118, i32 101, i32 32, i32 116, i32 104, i32 105, i32 115, i32 32, i32 102, i32 101, i32 97, i32 116, i32 117, i32 114, i32 101, i32 46, i32 10, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @break_main(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @StdOut, align 4
  %6 = call i32 @ConPuts(i32 %5, i8* bitcast ([75 x i32]* @.str to i8*))
  %7 = load i32, i32* @TRUE, align 4
  ret i32 %7
}

declare dso_local i32 @ConPuts(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
