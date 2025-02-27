; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.h_l2t_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.h_l2t_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.l2t_entry = type { i32 }
%struct.l2t_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t3cdev*, %struct.l2t_entry*)* @l2t_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2t_release(%struct.t3cdev* %0, %struct.l2t_entry* %1) #0 {
  %3 = alloca %struct.t3cdev*, align 8
  %4 = alloca %struct.l2t_entry*, align 8
  %5 = alloca %struct.l2t_data*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %3, align 8
  store %struct.l2t_entry* %1, %struct.l2t_entry** %4, align 8
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %8 = call %struct.l2t_data* @L2DATA(%struct.t3cdev* %7)
  store %struct.l2t_data* %8, %struct.l2t_data** %5, align 8
  %9 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %10 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %9, i32 0, i32 0
  %11 = call i64 @atomic_dec_and_test(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %15 = icmp ne %struct.l2t_data* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %18 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %19 = call i32 @t3_l2e_free(%struct.l2t_data* %17, %struct.l2t_entry* %18)
  br label %20

20:                                               ; preds = %16, %13, %2
  %21 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.l2t_data* @L2DATA(%struct.t3cdev*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @t3_l2e_free(%struct.l2t_data*, %struct.l2t_entry*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
