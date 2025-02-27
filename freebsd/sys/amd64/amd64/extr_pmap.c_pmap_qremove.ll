; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_qremove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_qremove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"usermode va %lx\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_qremove(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  store i64 %6, i64* %5, align 8
  br label %7

7:                                                ; preds = %11, %2
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %4, align 4
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  %14 = icmp sge i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %5, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @KASSERT(i32 %15, i8* %17)
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @pmap_kremove(i64 %19)
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %22, %21
  store i64 %23, i64* %5, align 8
  br label %7

24:                                               ; preds = %7
  %25 = load i32, i32* @kernel_pmap, align 4
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @pmap_invalidate_range(i32 %25, i64 %26, i64 %27)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_kremove(i64) #1

declare dso_local i32 @pmap_invalidate_range(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
