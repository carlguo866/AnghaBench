; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_bitmap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_bitmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_bitmap = type { i32, i64, i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_bitmap_init(%struct.hns_roce_bitmap* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_bitmap*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.hns_roce_bitmap* %0, %struct.hns_roce_bitmap** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i64 @roundup_pow_of_two(i64 %14)
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %69

20:                                               ; preds = %5
  %21 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %7, align 8
  %22 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %7, align 8
  %24 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %11, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %7, align 8
  %29 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %7, align 8
  %32 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %31, i32 0, i32 4
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %7, align 8
  %35 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %7, align 8
  %37 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %36, i32 0, i32 2
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %7, align 8
  %40 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @BITS_TO_LONGS(i64 %41)
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @kcalloc(i32 %42, i32 8, i32 %43)
  %45 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %7, align 8
  %46 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %7, align 8
  %48 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %20
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %69

54:                                               ; preds = %20
  store i64 0, i64* %12, align 8
  br label %55

55:                                               ; preds = %65, %54
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.hns_roce_bitmap*, %struct.hns_roce_bitmap** %7, align 8
  %62 = getelementptr inbounds %struct.hns_roce_bitmap, %struct.hns_roce_bitmap* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @set_bit(i64 %60, i32 %63)
  br label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %12, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %12, align 8
  br label %55

68:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %51, %17
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i64 @roundup_pow_of_two(i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i64) #1

declare dso_local i32 @set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
