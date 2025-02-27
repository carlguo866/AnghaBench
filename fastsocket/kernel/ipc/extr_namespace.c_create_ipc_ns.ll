; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_namespace.c_create_ipc_ns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_namespace.c_create_ipc_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_namespace = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nr_ipc_ns = common dso_local global i32 0, align 4
@IPCNS_CREATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipc_namespace* ()* @create_ipc_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipc_namespace* @create_ipc_ns() #0 {
  %1 = alloca %struct.ipc_namespace*, align 8
  %2 = alloca %struct.ipc_namespace*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.ipc_namespace* @kmalloc(i32 8, i32 %4)
  store %struct.ipc_namespace* %5, %struct.ipc_namespace** %2, align 8
  %6 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %7 = icmp eq %struct.ipc_namespace* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.ipc_namespace* @ERR_PTR(i32 %10)
  store %struct.ipc_namespace* %11, %struct.ipc_namespace** %1, align 8
  br label %53

12:                                               ; preds = %0
  %13 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %14 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %13, i32 0, i32 0
  %15 = call i32 @proc_alloc_inum(i32* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %20 = call i32 @kfree(%struct.ipc_namespace* %19)
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.ipc_namespace* @ERR_PTR(i32 %21)
  store %struct.ipc_namespace* %22, %struct.ipc_namespace** %1, align 8
  br label %53

23:                                               ; preds = %12
  %24 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %25 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %24, i32 0, i32 1
  %26 = call i32 @atomic_set(i32* %25, i32 1)
  %27 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %28 = call i32 @mq_init_ns(%struct.ipc_namespace* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %33 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @proc_free_inum(i32 %34)
  %36 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %37 = call i32 @kfree(%struct.ipc_namespace* %36)
  %38 = load i32, i32* %3, align 4
  %39 = call %struct.ipc_namespace* @ERR_PTR(i32 %38)
  store %struct.ipc_namespace* %39, %struct.ipc_namespace** %1, align 8
  br label %53

40:                                               ; preds = %23
  %41 = call i32 @atomic_inc(i32* @nr_ipc_ns)
  %42 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %43 = call i32 @sem_init_ns(%struct.ipc_namespace* %42)
  %44 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %45 = call i32 @msg_init_ns(%struct.ipc_namespace* %44)
  %46 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %47 = call i32 @shm_init_ns(%struct.ipc_namespace* %46)
  %48 = load i32, i32* @IPCNS_CREATED, align 4
  %49 = call i32 @ipcns_notify(i32 %48)
  %50 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  %51 = call i32 @register_ipcns_notifier(%struct.ipc_namespace* %50)
  %52 = load %struct.ipc_namespace*, %struct.ipc_namespace** %2, align 8
  store %struct.ipc_namespace* %52, %struct.ipc_namespace** %1, align 8
  br label %53

53:                                               ; preds = %40, %31, %18, %8
  %54 = load %struct.ipc_namespace*, %struct.ipc_namespace** %1, align 8
  ret %struct.ipc_namespace* %54
}

declare dso_local %struct.ipc_namespace* @kmalloc(i32, i32) #1

declare dso_local %struct.ipc_namespace* @ERR_PTR(i32) #1

declare dso_local i32 @proc_alloc_inum(i32*) #1

declare dso_local i32 @kfree(%struct.ipc_namespace*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mq_init_ns(%struct.ipc_namespace*) #1

declare dso_local i32 @proc_free_inum(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @sem_init_ns(%struct.ipc_namespace*) #1

declare dso_local i32 @msg_init_ns(%struct.ipc_namespace*) #1

declare dso_local i32 @shm_init_ns(%struct.ipc_namespace*) #1

declare dso_local i32 @ipcns_notify(i32) #1

declare dso_local i32 @register_ipcns_notifier(%struct.ipc_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
