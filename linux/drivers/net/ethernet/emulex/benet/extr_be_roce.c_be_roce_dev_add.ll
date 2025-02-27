; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_roce.c_be_roce_dev_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_roce.c_be_roce_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }

@be_adapter_list_lock = common dso_local global i32 0, align 4
@be_adapter_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @be_roce_dev_add(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %3 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %4 = call i64 @be_roce_supported(%struct.be_adapter* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %7, i32 0, i32 0
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = call i32 @mutex_lock(i32* @be_adapter_list_lock)
  %11 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %11, i32 0, i32 0
  %13 = call i32 @list_add_tail(i32* %12, i32* @be_adapter_list)
  %14 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %15 = call i32 @_be_roce_dev_add(%struct.be_adapter* %14)
  %16 = call i32 @mutex_unlock(i32* @be_adapter_list_lock)
  br label %17

17:                                               ; preds = %6, %1
  ret void
}

declare dso_local i64 @be_roce_supported(%struct.be_adapter*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @_be_roce_dev_add(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
