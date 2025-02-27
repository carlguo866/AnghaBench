; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_nfqnl_reinject.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_nfqnl_reinject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_queue_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nf_ct_hook = type { i32 (i32, i32)* }

@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_REPEAT = common dso_local global i32 0, align 4
@NF_STOP = common dso_local global i32 0, align 4
@nf_ct_hook = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_queue_entry*, i32)* @nfqnl_reinject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfqnl_reinject(%struct.nf_queue_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.nf_queue_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_ct_hook*, align 8
  %6 = alloca i32, align 4
  store %struct.nf_queue_entry* %0, %struct.nf_queue_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NF_ACCEPT, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @NF_REPEAT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @NF_STOP, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14, %10, %2
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load i32, i32* @nf_ct_hook, align 4
  %21 = call %struct.nf_ct_hook* @rcu_dereference(i32 %20)
  store %struct.nf_ct_hook* %21, %struct.nf_ct_hook** %5, align 8
  %22 = load %struct.nf_ct_hook*, %struct.nf_ct_hook** %5, align 8
  %23 = icmp ne %struct.nf_ct_hook* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load %struct.nf_ct_hook*, %struct.nf_ct_hook** %5, align 8
  %26 = getelementptr inbounds %struct.nf_ct_hook, %struct.nf_ct_hook* %25, i32 0, i32 0
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %26, align 8
  %28 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %29 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %33 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %27(i32 %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* @NF_DROP, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %24
  br label %41

41:                                               ; preds = %40, %18
  %42 = call i32 (...) @rcu_read_unlock()
  br label %43

43:                                               ; preds = %41, %14
  %44 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @nf_reinject(%struct.nf_queue_entry* %44, i32 %45)
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_ct_hook* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nf_reinject(%struct.nf_queue_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
