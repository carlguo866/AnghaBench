; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_syspd.c_mfi_syspd_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_syspd.c_mfi_syspd_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { %struct.mfi_system_pd* }
%struct.mfi_system_pd = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MFI_DISK_FLAGS_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk*)* @mfi_syspd_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_syspd_close(%struct.disk* %0) #0 {
  %2 = alloca %struct.disk*, align 8
  %3 = alloca %struct.mfi_system_pd*, align 8
  store %struct.disk* %0, %struct.disk** %2, align 8
  %4 = load %struct.disk*, %struct.disk** %2, align 8
  %5 = getelementptr inbounds %struct.disk, %struct.disk* %4, i32 0, i32 0
  %6 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %5, align 8
  store %struct.mfi_system_pd* %6, %struct.mfi_system_pd** %3, align 8
  %7 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %3, align 8
  %8 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load i32, i32* @MFI_DISK_FLAGS_OPEN, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %3, align 8
  %15 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %3, align 8
  %19 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @mtx_unlock(i32* %21)
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
