; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_unlock_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_unlock_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_lkb = type { %struct.dlm_rsb* }
%struct.dlm_rsb = type { i32 }
%struct.dlm_args = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_args*)* @unlock_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unlock_lock(%struct.dlm_ls* %0, %struct.dlm_lkb* %1, %struct.dlm_args* %2) #0 {
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca %struct.dlm_args*, align 8
  %7 = alloca %struct.dlm_rsb*, align 8
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  store %struct.dlm_args* %2, %struct.dlm_args** %6, align 8
  %9 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %10 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %9, i32 0, i32 0
  %11 = load %struct.dlm_rsb*, %struct.dlm_rsb** %10, align 8
  store %struct.dlm_rsb* %11, %struct.dlm_rsb** %7, align 8
  %12 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %13 = call i32 @hold_rsb(%struct.dlm_rsb* %12)
  %14 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %15 = call i32 @lock_rsb(%struct.dlm_rsb* %14)
  %16 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %17 = load %struct.dlm_args*, %struct.dlm_args** %6, align 8
  %18 = call i32 @validate_unlock_args(%struct.dlm_lkb* %16, %struct.dlm_args* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %24 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %25 = call i32 @_unlock_lock(%struct.dlm_rsb* %23, %struct.dlm_lkb* %24)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %22, %21
  %27 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %28 = call i32 @unlock_rsb(%struct.dlm_rsb* %27)
  %29 = load %struct.dlm_rsb*, %struct.dlm_rsb** %7, align 8
  %30 = call i32 @put_rsb(%struct.dlm_rsb* %29)
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

declare dso_local i32 @hold_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @validate_unlock_args(%struct.dlm_lkb*, %struct.dlm_args*) #1

declare dso_local i32 @_unlock_lock(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
