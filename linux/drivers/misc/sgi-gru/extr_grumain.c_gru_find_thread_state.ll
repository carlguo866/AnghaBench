; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_find_thread_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_find_thread_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_thread_state = type { i32 }
%struct.vm_area_struct = type { %struct.gru_vma_data* }
%struct.gru_vma_data = type { i32 }

@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"vma %p, gts %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gru_thread_state* @gru_find_thread_state(%struct.vm_area_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gru_vma_data*, align 8
  %6 = alloca %struct.gru_thread_state*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %7, i32 0, i32 0
  %9 = load %struct.gru_vma_data*, %struct.gru_vma_data** %8, align 8
  store %struct.gru_vma_data* %9, %struct.gru_vma_data** %5, align 8
  %10 = load %struct.gru_vma_data*, %struct.gru_vma_data** %5, align 8
  %11 = getelementptr inbounds %struct.gru_vma_data, %struct.gru_vma_data* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.gru_vma_data*, %struct.gru_vma_data** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.gru_thread_state* @gru_find_current_gts_nolock(%struct.gru_vma_data* %13, i32 %14)
  store %struct.gru_thread_state* %15, %struct.gru_thread_state** %6, align 8
  %16 = load %struct.gru_vma_data*, %struct.gru_vma_data** %5, align 8
  %17 = getelementptr inbounds %struct.gru_vma_data, %struct.gru_vma_data* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load i32, i32* @grudev, align 4
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %21 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %22 = call i32 @gru_dbg(i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.vm_area_struct* %20, %struct.gru_thread_state* %21)
  %23 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  ret %struct.gru_thread_state* %23
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.gru_thread_state* @gru_find_current_gts_nolock(%struct.gru_vma_data*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gru_dbg(i32, i8*, %struct.vm_area_struct*, %struct.gru_thread_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
