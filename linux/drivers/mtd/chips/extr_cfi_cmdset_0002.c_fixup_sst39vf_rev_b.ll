; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_fixup_sst39vf_rev_b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_fixup_sst39vf_rev_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @fixup_sst39vf_rev_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_sst39vf_rev_b(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca %struct.cfi_private*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %5 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %6 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 0
  %7 = load %struct.map_info*, %struct.map_info** %6, align 8
  store %struct.map_info* %7, %struct.map_info** %3, align 8
  %8 = load %struct.map_info*, %struct.map_info** %3, align 8
  %9 = getelementptr inbounds %struct.map_info, %struct.map_info* %8, i32 0, i32 0
  %10 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  store %struct.cfi_private* %10, %struct.cfi_private** %4, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %12 = call i32 @fixup_old_sst_eraseregion(%struct.mtd_info* %11)
  %13 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %14 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %13, i32 0, i32 0
  store i32 1365, i32* %14, align 4
  %15 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %16 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %15, i32 0, i32 1
  store i32 682, i32* %16, align 4
  %17 = call i32 @CMD(i32 80)
  %18 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %19 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  ret void
}

declare dso_local i32 @fixup_old_sst_eraseregion(%struct.mtd_info*) #1

declare dso_local i32 @CMD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
