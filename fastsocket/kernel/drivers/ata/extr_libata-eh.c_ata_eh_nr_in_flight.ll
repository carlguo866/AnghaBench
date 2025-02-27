; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_nr_in_flight.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_nr_in_flight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32 }

@ATA_MAX_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @ata_eh_nr_in_flight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_eh_nr_in_flight(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %8 = sub nsw i32 %7, 1
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %5
  %11 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @ata_qc_from_tag(%struct.ata_port* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %5

22:                                               ; preds = %5
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i64 @ata_qc_from_tag(%struct.ata_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
