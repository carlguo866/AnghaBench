; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_timing_find_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_timing_find_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_timing = type { i64 }

@ata_timing = common dso_local global %struct.ata_timing* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ata_timing* @ata_timing_find_mode(i64 %0) #0 {
  %2 = alloca %struct.ata_timing*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ata_timing*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.ata_timing*, %struct.ata_timing** @ata_timing, align 8
  store %struct.ata_timing* %5, %struct.ata_timing** %4, align 8
  br label %6

6:                                                ; preds = %12, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.ata_timing*, %struct.ata_timing** %4, align 8
  %9 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load %struct.ata_timing*, %struct.ata_timing** %4, align 8
  %14 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 1
  store %struct.ata_timing* %14, %struct.ata_timing** %4, align 8
  br label %6

15:                                               ; preds = %6
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.ata_timing*, %struct.ata_timing** %4, align 8
  %18 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.ata_timing*, %struct.ata_timing** %4, align 8
  store %struct.ata_timing* %22, %struct.ata_timing** %2, align 8
  br label %24

23:                                               ; preds = %15
  store %struct.ata_timing* null, %struct.ata_timing** %2, align 8
  br label %24

24:                                               ; preds = %23, %21
  %25 = load %struct.ata_timing*, %struct.ata_timing** %2, align 8
  ret %struct.ata_timing* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
