; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_dirty_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_dirty_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_dirty_bits(%struct.bitmap* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bitmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bitmap* %0, %struct.bitmap** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %7, align 8
  br label %10

10:                                               ; preds = %41, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ule i64 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %17 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = shl i64 %15, %19
  store i64 %20, i64* %8, align 8
  %21 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @bitmap_set_memory_bits(%struct.bitmap* %21, i64 %22, i32 1)
  %24 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @bitmap_file_set_bit(%struct.bitmap* %24, i64 %25)
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %29 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %27, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %14
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.bitmap*, %struct.bitmap** %4, align 8
  %37 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 %35, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %14
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %10

44:                                               ; preds = %10
  ret void
}

declare dso_local i32 @bitmap_set_memory_bits(%struct.bitmap*, i64, i32) #1

declare dso_local i32 @bitmap_file_set_bit(%struct.bitmap*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
