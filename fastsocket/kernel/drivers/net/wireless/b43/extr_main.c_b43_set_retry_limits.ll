; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_set_retry_limits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_set_retry_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_SHM_SCRATCH = common dso_local global i32 0, align 4
@B43_SHM_SC_SRLIMIT = common dso_local global i32 0, align 4
@B43_SHM_SC_LRLIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32)* @b43_set_retry_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_set_retry_limits(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @min(i32 %7, i32 15)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @min(i32 %9, i32 15)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %12 = load i32, i32* @B43_SHM_SCRATCH, align 4
  %13 = load i32, i32* @B43_SHM_SC_SRLIMIT, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @b43_shm_write16(%struct.b43_wldev* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %17 = load i32, i32* @B43_SHM_SCRATCH, align 4
  %18 = load i32, i32* @B43_SHM_SC_LRLIMIT, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @b43_shm_write16(%struct.b43_wldev* %16, i32 %17, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
