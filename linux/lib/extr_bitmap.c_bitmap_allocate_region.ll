; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bitmap.c_bitmap_allocate_region.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bitmap.c_bitmap_allocate_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_OP_ISFREE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@REG_OP_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitmap_allocate_region(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i64*, i64** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @REG_OP_ISFREE, align 4
  %12 = call i32 @__reg_op(i64* %8, i32 %9, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load i64*, i64** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @REG_OP_ALLOC, align 4
  %22 = call i32 @__reg_op(i64* %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %14
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @__reg_op(i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
