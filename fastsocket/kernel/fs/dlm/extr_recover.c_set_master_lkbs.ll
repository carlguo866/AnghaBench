; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recover.c_set_master_lkbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recover.c_set_master_lkbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_rsb*)* @set_master_lkbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_master_lkbs(%struct.dlm_rsb* %0) #0 {
  %2 = alloca %struct.dlm_rsb*, align 8
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %2, align 8
  %3 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %4 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %3, i32 0, i32 3
  %5 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %6 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @set_lock_master(i32* %4, i32 %7)
  %9 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %10 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %9, i32 0, i32 2
  %11 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %12 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @set_lock_master(i32* %10, i32 %13)
  %15 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %16 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %15, i32 0, i32 1
  %17 = load %struct.dlm_rsb*, %struct.dlm_rsb** %2, align 8
  %18 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @set_lock_master(i32* %16, i32 %19)
  ret void
}

declare dso_local i32 @set_lock_master(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
