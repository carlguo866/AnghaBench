; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_simdisk.c_simdisk_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_simdisk.c_simdisk_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.simdisk* }
%struct.simdisk = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @simdisk_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simdisk_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.simdisk*, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.block_device*, %struct.block_device** %3, align 8
  %7 = getelementptr inbounds %struct.block_device, %struct.block_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.simdisk*, %struct.simdisk** %9, align 8
  store %struct.simdisk* %10, %struct.simdisk** %5, align 8
  %11 = load %struct.simdisk*, %struct.simdisk** %5, align 8
  %12 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.simdisk*, %struct.simdisk** %5, align 8
  %15 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.block_device*, %struct.block_device** %3, align 8
  %20 = call i32 @check_disk_change(%struct.block_device* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.simdisk*, %struct.simdisk** %5, align 8
  %23 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.simdisk*, %struct.simdisk** %5, align 8
  %27 = getelementptr inbounds %struct.simdisk, %struct.simdisk* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @check_disk_change(%struct.block_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
