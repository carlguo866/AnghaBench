; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_wait_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32 }

@ata_sff_check_ready = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sff_wait_ready(%struct.ata_link* %0, i64 %1) #0 {
  %3 = alloca %struct.ata_link*, align 8
  %4 = alloca i64, align 8
  store %struct.ata_link* %0, %struct.ata_link** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i32, i32* @ata_sff_check_ready, align 4
  %8 = call i32 @ata_wait_ready(%struct.ata_link* %5, i64 %6, i32 %7)
  ret i32 %8
}

declare dso_local i32 @ata_wait_ready(%struct.ata_link*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
