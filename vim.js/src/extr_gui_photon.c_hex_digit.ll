; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_hex_digit.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_hex_digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hex_digit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hex_digit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @VIM_ISDIGIT(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = sub nsw i32 %8, 48
  store i32 %9, i32* %2, align 4
  br label %23

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @TOLOWER_ASC(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 97
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 102
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %19, 97
  %21 = add nsw i32 %20, 10
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %15, %10
  store i32 -1000, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %18, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @VIM_ISDIGIT(i32) #1

declare dso_local i32 @TOLOWER_ASC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
