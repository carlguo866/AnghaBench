; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_find_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_find_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i32 }

@ST_NBR_PARTITIONS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*)* @find_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_partition(%struct.scsi_tape* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_tape*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scsi_tape* %0, %struct.scsi_tape** %3, align 8
  %7 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %8 = call i32 @get_location(%struct.scsi_tape* %7, i32* %6, i32* %5, i32 1)
  store i32 %8, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ST_NBR_PARTITIONS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %16, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @get_location(%struct.scsi_tape*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
