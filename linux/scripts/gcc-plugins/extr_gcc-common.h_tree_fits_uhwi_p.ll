; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_gcc-common.h_tree_fits_uhwi_p.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_gcc-common.h_tree_fits_uhwi_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @tree_fits_uhwi_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_fits_uhwi_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @NULL_TREE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @TREE_CODE(i64 %8)
  %10 = load i64, i64* @INTEGER_CST, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %18

13:                                               ; preds = %7
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @TREE_INT_CST_HIGH(i64 %14)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_INT_CST_HIGH(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
