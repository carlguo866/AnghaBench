; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c___ata_ehi_pushv_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c___ata_ehi_pushv_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_eh_info = type { i64, i64 }

@ATA_EH_DESC_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_eh_info*, i8*, i32)* @__ata_ehi_pushv_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ata_ehi_pushv_desc(%struct.ata_eh_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_eh_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_eh_info* %0, %struct.ata_eh_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ata_eh_info*, %struct.ata_eh_info** %4, align 8
  %8 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ata_eh_info*, %struct.ata_eh_info** %4, align 8
  %11 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = load i64, i64* @ATA_EH_DESC_LEN, align 8
  %15 = load %struct.ata_eh_info*, %struct.ata_eh_info** %4, align 8
  %16 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @vscnprintf(i64 %13, i64 %18, i8* %19, i32 %20)
  %22 = load %struct.ata_eh_info*, %struct.ata_eh_info** %4, align 8
  %23 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  ret void
}

declare dso_local i64 @vscnprintf(i64, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
