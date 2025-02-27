; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_lgr_forget.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_lgr_forget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.smc_link_group = type { i32 }

@smc_lgr_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smc_lgr_forget(%struct.smc_link_group* %0) #0 {
  %2 = alloca %struct.smc_link_group*, align 8
  store %struct.smc_link_group* %0, %struct.smc_link_group** %2, align 8
  %3 = call i32 @spin_lock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smc_lgr_list, i32 0, i32 0))
  %4 = load %struct.smc_link_group*, %struct.smc_link_group** %2, align 8
  %5 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %4, i32 0, i32 0
  %6 = call i32 @list_empty(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.smc_link_group*, %struct.smc_link_group** %2, align 8
  %10 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %9, i32 0, i32 0
  %11 = call i32 @list_del_init(i32* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = call i32 @spin_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smc_lgr_list, i32 0, i32 0))
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
