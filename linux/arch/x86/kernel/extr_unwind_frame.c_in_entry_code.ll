; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_frame.c_in_entry_code.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_frame.c_in_entry_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__entry_text_start = common dso_local global i8* null, align 8
@__entry_text_end = common dso_local global i8* null, align 8
@__irqentry_text_start = common dso_local global i8* null, align 8
@__irqentry_text_end = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @in_entry_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_entry_code(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** @__entry_text_start, align 8
  %9 = icmp uge i8* %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** @__entry_text_end, align 8
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %25

15:                                               ; preds = %10, %1
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** @__irqentry_text_start, align 8
  %18 = icmp uge i8* %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** @__irqentry_text_end, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %25

24:                                               ; preds = %19, %15
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
