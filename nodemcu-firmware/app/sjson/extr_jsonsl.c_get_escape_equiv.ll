; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_get_escape_equiv.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_get_escape_equiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32)* @get_escape_equiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @get_escape_equiv(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %10 [
    i32 98, label %5
    i32 110, label %6
    i32 114, label %7
    i32 116, label %8
    i32 102, label %9
  ]

5:                                                ; preds = %1
  store i8 8, i8* %2, align 1
  br label %11

6:                                                ; preds = %1
  store i8 10, i8* %2, align 1
  br label %11

7:                                                ; preds = %1
  store i8 13, i8* %2, align 1
  br label %11

8:                                                ; preds = %1
  store i8 9, i8* %2, align 1
  br label %11

9:                                                ; preds = %1
  store i8 12, i8* %2, align 1
  br label %11

10:                                               ; preds = %1
  store i8 0, i8* %2, align 1
  br label %11

11:                                               ; preds = %10, %9, %8, %7, %6, %5
  %12 = load i8, i8* %2, align 1
  ret i8 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
