; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_release_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_release_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i32*, i32 }

@lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_id_private*)* @cma_release_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cma_release_dev(%struct.rdma_id_private* %0) #0 {
  %2 = alloca %struct.rdma_id_private*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %2, align 8
  %3 = call i32 @mutex_lock(i32* @lock)
  %4 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %5 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %4, i32 0, i32 1
  %6 = call i32 @list_del(i32* %5)
  %7 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %8 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @cma_deref_dev(i32* %9)
  %11 = load %struct.rdma_id_private*, %struct.rdma_id_private** %2, align 8
  %12 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = call i32 @mutex_unlock(i32* @lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @cma_deref_dev(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
