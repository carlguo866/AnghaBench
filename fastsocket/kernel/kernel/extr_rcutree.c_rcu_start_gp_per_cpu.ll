; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree.c_rcu_start_gp_per_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree.c_rcu_start_gp_per_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_state = type { i32 }
%struct.rcu_node = type { i32 }
%struct.rcu_data = type { i32* }

@RCU_NEXT_TAIL = common dso_local global i64 0, align 8
@RCU_NEXT_READY_TAIL = common dso_local global i64 0, align 8
@RCU_WAIT_TAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcu_state*, %struct.rcu_node*, %struct.rcu_data*)* @rcu_start_gp_per_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcu_start_gp_per_cpu(%struct.rcu_state* %0, %struct.rcu_node* %1, %struct.rcu_data* %2) #0 {
  %4 = alloca %struct.rcu_state*, align 8
  %5 = alloca %struct.rcu_node*, align 8
  %6 = alloca %struct.rcu_data*, align 8
  store %struct.rcu_state* %0, %struct.rcu_state** %4, align 8
  store %struct.rcu_node* %1, %struct.rcu_node** %5, align 8
  store %struct.rcu_data* %2, %struct.rcu_data** %6, align 8
  %7 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %8 = load %struct.rcu_node*, %struct.rcu_node** %5, align 8
  %9 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %10 = call i32 @__rcu_process_gp_end(%struct.rcu_state* %7, %struct.rcu_node* %8, %struct.rcu_data* %9)
  %11 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %12 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @RCU_NEXT_TAIL, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %18 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @RCU_NEXT_READY_TAIL, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %16, i32* %21, align 4
  %22 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %23 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @RCU_NEXT_TAIL, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %29 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @RCU_WAIT_TAIL, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %27, i32* %32, align 4
  %33 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %34 = load %struct.rcu_node*, %struct.rcu_node** %5, align 8
  %35 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %36 = call i32 @__note_new_gpnum(%struct.rcu_state* %33, %struct.rcu_node* %34, %struct.rcu_data* %35)
  ret void
}

declare dso_local i32 @__rcu_process_gp_end(%struct.rcu_state*, %struct.rcu_node*, %struct.rcu_data*) #1

declare dso_local i32 @__note_new_gpnum(%struct.rcu_state*, %struct.rcu_node*, %struct.rcu_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
