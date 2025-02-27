; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfscache.c_nfsd_cache_entry_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfscache.c_nfsd_cache_entry_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_cacherep = type { i64, i64 }

@RC_INPROG = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@RC_EXPIRE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_cacherep*)* @nfsd_cache_entry_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_cache_entry_expired(%struct.svc_cacherep* %0) #0 {
  %2 = alloca %struct.svc_cacherep*, align 8
  store %struct.svc_cacherep* %0, %struct.svc_cacherep** %2, align 8
  %3 = load %struct.svc_cacherep*, %struct.svc_cacherep** %2, align 8
  %4 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RC_INPROG, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i32, i32* @jiffies, align 4
  %10 = load %struct.svc_cacherep*, %struct.svc_cacherep** %2, align 8
  %11 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RC_EXPIRE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @time_after(i32 %9, i64 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %8, %1
  %18 = phi i1 [ false, %1 ], [ %16, %8 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i64 @time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
