; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_chain_cont_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_chain_cont_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exfat_chain_cont_cluster(%struct.super_block* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %32

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %22, %10
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i64 @FAT_write(%struct.super_block* %15, i64 %16, i64 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %27

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %6, align 4
  br label %11

27:                                               ; preds = %21, %11
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @CLUSTER_32(i32 -1)
  %31 = call i64 @FAT_write(%struct.super_block* %28, i64 %29, i64 %30)
  br label %32

32:                                               ; preds = %27, %9
  ret void
}

declare dso_local i64 @FAT_write(%struct.super_block*, i64, i64) #1

declare dso_local i64 @CLUSTER_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
