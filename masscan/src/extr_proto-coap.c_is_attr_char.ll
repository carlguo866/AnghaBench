; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-coap.c_is_attr_char.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-coap.c_is_attr_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_attr_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_attr_char(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %6 [
    i32 33, label %5
    i32 35, label %5
    i32 36, label %5
    i32 38, label %5
    i32 43, label %5
    i32 45, label %5
    i32 46, label %5
    i32 94, label %5
    i32 95, label %5
    i32 96, label %5
    i32 124, label %5
    i32 126, label %5
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %11

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @isalnum(i32 %7)
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %6, %5
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

declare dso_local i32 @isalnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
