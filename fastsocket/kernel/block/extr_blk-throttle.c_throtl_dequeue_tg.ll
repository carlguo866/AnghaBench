; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_dequeue_tg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_dequeue_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { i32 }
%struct.throtl_grp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_data*, %struct.throtl_grp*)* @throtl_dequeue_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_dequeue_tg(%struct.throtl_data* %0, %struct.throtl_grp* %1) #0 {
  %3 = alloca %struct.throtl_data*, align 8
  %4 = alloca %struct.throtl_grp*, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %3, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %4, align 8
  %5 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %6 = call i64 @throtl_tg_on_rr(%struct.throtl_grp* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %10 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %11 = call i32 @__throtl_dequeue_tg(%struct.throtl_data* %9, %struct.throtl_grp* %10)
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

declare dso_local i64 @throtl_tg_on_rr(%struct.throtl_grp*) #1

declare dso_local i32 @__throtl_dequeue_tg(%struct.throtl_data*, %struct.throtl_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
