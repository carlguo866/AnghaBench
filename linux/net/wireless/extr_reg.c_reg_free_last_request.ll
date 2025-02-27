; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_free_last_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_free_last_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulatory_request = type { i32 }

@core_request_world = common dso_local global %struct.regulatory_request zeroinitializer, align 4
@rcu_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reg_free_last_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_free_last_request() #0 {
  %1 = alloca %struct.regulatory_request*, align 8
  %2 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %2, %struct.regulatory_request** %1, align 8
  %3 = load %struct.regulatory_request*, %struct.regulatory_request** %1, align 8
  %4 = icmp ne %struct.regulatory_request* %3, @core_request_world
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load %struct.regulatory_request*, %struct.regulatory_request** %1, align 8
  %7 = icmp ne %struct.regulatory_request* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load %struct.regulatory_request*, %struct.regulatory_request** %1, align 8
  %10 = load i32, i32* @rcu_head, align 4
  %11 = call i32 @kfree_rcu(%struct.regulatory_request* %9, i32 %10)
  br label %12

12:                                               ; preds = %8, %5, %0
  ret void
}

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i32 @kfree_rcu(%struct.regulatory_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
