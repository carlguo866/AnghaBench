; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_htable_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_htable_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_hashlimit_htable = type { i64, i32 }

@hashlimit_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xt_hashlimit_htable*)* @htable_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htable_put(%struct.xt_hashlimit_htable* %0) #0 {
  %2 = alloca %struct.xt_hashlimit_htable*, align 8
  store %struct.xt_hashlimit_htable* %0, %struct.xt_hashlimit_htable** %2, align 8
  %3 = call i32 @mutex_lock(i32* @hashlimit_mutex)
  %4 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %2, align 8
  %5 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %2, align 8
  %11 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %10, i32 0, i32 1
  %12 = call i32 @hlist_del(i32* %11)
  %13 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %2, align 8
  %14 = call i32 @htable_destroy(%struct.xt_hashlimit_htable* %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = call i32 @mutex_unlock(i32* @hashlimit_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @htable_destroy(%struct.xt_hashlimit_htable*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
