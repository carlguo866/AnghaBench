; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_send_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_send_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32 }
%struct.dlm_lkb = type { i32 }
%struct.dlm_message = type { i32 }
%struct.dlm_mhandle = type { i32 }

@DLM_MSG_LOOKUP = common dso_local global i32 0, align 4
@DLM_MSG_LOOKUP_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*, %struct.dlm_lkb*)* @send_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_lookup(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_rsb*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca %struct.dlm_message*, align 8
  %7 = alloca %struct.dlm_mhandle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  %10 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %11 = call i32 @dlm_dir_nodeid(%struct.dlm_rsb* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %13 = load i32, i32* @DLM_MSG_LOOKUP, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @add_to_waiters(%struct.dlm_lkb* %12, i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @DLM_MSG_LOOKUP, align 4
  %24 = call i32 @create_message(%struct.dlm_rsb* %21, i32* null, i32 %22, i32 %23, %struct.dlm_message** %6, %struct.dlm_mhandle** %7)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %40

28:                                               ; preds = %20
  %29 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  %30 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %31 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %32 = call i32 @send_args(%struct.dlm_rsb* %29, %struct.dlm_lkb* %30, %struct.dlm_message* %31)
  %33 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %7, align 8
  %34 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %35 = call i32 @send_message(%struct.dlm_mhandle* %33, %struct.dlm_message* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %40

39:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %45

40:                                               ; preds = %38, %27
  %41 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %42 = load i32, i32* @DLM_MSG_LOOKUP_REPLY, align 4
  %43 = call i32 @remove_from_waiters(%struct.dlm_lkb* %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %39, %18
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @dlm_dir_nodeid(%struct.dlm_rsb*) #1

declare dso_local i32 @add_to_waiters(%struct.dlm_lkb*, i32, i32) #1

declare dso_local i32 @create_message(%struct.dlm_rsb*, i32*, i32, i32, %struct.dlm_message**, %struct.dlm_mhandle**) #1

declare dso_local i32 @send_args(%struct.dlm_rsb*, %struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @send_message(%struct.dlm_mhandle*, %struct.dlm_message*) #1

declare dso_local i32 @remove_from_waiters(%struct.dlm_lkb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
