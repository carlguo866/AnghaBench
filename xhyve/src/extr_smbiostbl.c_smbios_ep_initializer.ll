; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_smbiostbl.c_smbios_ep_initializer.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_smbiostbl.c_smbios_ep_initializer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbios_entry_point = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@SMBIOS_ENTRY_EANCHOR = common dso_local global i32 0, align 4
@SMBIOS_ENTRY_EANCHORLEN = common dso_local global i32 0, align 4
@SMBIOS_ENTRY_IANCHOR = common dso_local global i32 0, align 4
@SMBIOS_ENTRY_IANCHORLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smbios_entry_point*, i32)* @smbios_ep_initializer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smbios_ep_initializer(%struct.smbios_entry_point* %0, i32 %1) #0 {
  %3 = alloca %struct.smbios_entry_point*, align 8
  %4 = alloca i32, align 4
  store %struct.smbios_entry_point* %0, %struct.smbios_entry_point** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %3, align 8
  %6 = call i32 @memset(%struct.smbios_entry_point* %5, i32 0, i32 40)
  %7 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %3, align 8
  %8 = getelementptr inbounds %struct.smbios_entry_point, %struct.smbios_entry_point* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SMBIOS_ENTRY_EANCHOR, align 4
  %11 = load i32, i32* @SMBIOS_ENTRY_EANCHORLEN, align 4
  %12 = call i32 @memcpy(i32 %9, i32 %10, i32 %11)
  %13 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %3, align 8
  %14 = getelementptr inbounds %struct.smbios_entry_point, %struct.smbios_entry_point* %13, i32 0, i32 0
  store i32 31, i32* %14, align 8
  %15 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %3, align 8
  %16 = getelementptr inbounds %struct.smbios_entry_point, %struct.smbios_entry_point* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 40, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %3, align 8
  %23 = getelementptr inbounds %struct.smbios_entry_point, %struct.smbios_entry_point* %22, i32 0, i32 1
  store i32 2, i32* %23, align 4
  %24 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %3, align 8
  %25 = getelementptr inbounds %struct.smbios_entry_point, %struct.smbios_entry_point* %24, i32 0, i32 2
  store i32 6, i32* %25, align 8
  %26 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %3, align 8
  %27 = getelementptr inbounds %struct.smbios_entry_point, %struct.smbios_entry_point* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %3, align 8
  %29 = getelementptr inbounds %struct.smbios_entry_point, %struct.smbios_entry_point* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SMBIOS_ENTRY_IANCHOR, align 4
  %32 = load i32, i32* @SMBIOS_ENTRY_IANCHORLEN, align 4
  %33 = call i32 @memcpy(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %3, align 8
  %36 = getelementptr inbounds %struct.smbios_entry_point, %struct.smbios_entry_point* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.smbios_entry_point*, %struct.smbios_entry_point** %3, align 8
  %38 = getelementptr inbounds %struct.smbios_entry_point, %struct.smbios_entry_point* %37, i32 0, i32 3
  store i32 36, i32* %38, align 4
  ret void
}

declare dso_local i32 @memset(%struct.smbios_entry_point*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
