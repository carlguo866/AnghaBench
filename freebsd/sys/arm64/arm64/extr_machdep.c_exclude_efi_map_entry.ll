; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_exclude_efi_map_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_exclude_efi_map_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_md = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EXFLAG_NOALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efi_md*)* @exclude_efi_map_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exclude_efi_map_entry(%struct.efi_md* %0) #0 {
  %2 = alloca %struct.efi_md*, align 8
  store %struct.efi_md* %0, %struct.efi_md** %2, align 8
  %3 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %4 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %7 [
    i32 130, label %6
    i32 129, label %6
    i32 132, label %6
    i32 131, label %6
    i32 128, label %6
  ]

6:                                                ; preds = %1, %1, %1, %1, %1
  br label %18

7:                                                ; preds = %1
  %8 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %9 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %12 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i32, i32* @EXFLAG_NOALLOC, align 4
  %17 = call i32 @arm_physmem_exclude_region(i32 %10, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @arm_physmem_exclude_region(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
