; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmconvert.c_dlm_revert_pending_convert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmconvert.c_dlm_revert_pending_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock_resource = type { i32 }
%struct.dlm_lock = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@LKM_IVMODE = common dso_local global i32 0, align 4
@DLM_LKSB_GET_LVB = common dso_local global i32 0, align 4
@DLM_LKSB_PUT_LVB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_revert_pending_convert(%struct.dlm_lock_resource* %0, %struct.dlm_lock* %1) #0 {
  %3 = alloca %struct.dlm_lock_resource*, align 8
  %4 = alloca %struct.dlm_lock*, align 8
  store %struct.dlm_lock_resource* %0, %struct.dlm_lock_resource** %3, align 8
  store %struct.dlm_lock* %1, %struct.dlm_lock** %4, align 8
  %5 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %6 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %5, i32 0, i32 2
  %7 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %3, align 8
  %8 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %7, i32 0, i32 0
  %9 = call i32 @list_move_tail(i32* %6, i32* %8)
  %10 = load i32, i32* @LKM_IVMODE, align 4
  %11 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load i32, i32* @DLM_LKSB_GET_LVB, align 4
  %15 = load i32, i32* @DLM_LKSB_PUT_LVB, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %19 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %17
  store i32 %23, i32* %21, align 4
  ret void
}

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
