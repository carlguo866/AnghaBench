; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_host.c_nlm_rebind_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_host.c_nlm_rebind_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i64, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"lockd: rebind host %s\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@NLM_HOST_REBIND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_rebind_host(%struct.nlm_host* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %2, align 8
  %3 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %4 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %8 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %14 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @time_after_eq(i64 %12, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %20 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @rpc_force_rebind(i64 %21)
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* @NLM_HOST_REBIND, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %27 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %18, %11, %1
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @rpc_force_rebind(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
