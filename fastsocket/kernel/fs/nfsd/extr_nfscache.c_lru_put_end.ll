; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfscache.c_lru_put_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfscache.c_lru_put_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_cacherep = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@lru_head = common dso_local global i32 0, align 4
@cache_cleaner = common dso_local global i32 0, align 4
@RC_EXPIRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_cacherep*)* @lru_put_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lru_put_end(%struct.svc_cacherep* %0) #0 {
  %2 = alloca %struct.svc_cacherep*, align 8
  store %struct.svc_cacherep* %0, %struct.svc_cacherep** %2, align 8
  %3 = load i32, i32* @jiffies, align 4
  %4 = load %struct.svc_cacherep*, %struct.svc_cacherep** %2, align 8
  %5 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 4
  %6 = load %struct.svc_cacherep*, %struct.svc_cacherep** %2, align 8
  %7 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %6, i32 0, i32 0
  %8 = call i32 @list_move_tail(i32* %7, i32* @lru_head)
  %9 = load i32, i32* @RC_EXPIRE, align 4
  %10 = call i32 @schedule_delayed_work(i32* @cache_cleaner, i32 %9)
  ret void
}

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
