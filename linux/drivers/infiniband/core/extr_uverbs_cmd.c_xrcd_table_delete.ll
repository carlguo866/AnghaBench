; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_xrcd_table_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_xrcd_table_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uverbs_device = type { i32 }
%struct.inode = type { i32 }
%struct.xrcd_table_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_uverbs_device*, %struct.inode*)* @xrcd_table_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xrcd_table_delete(%struct.ib_uverbs_device* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.ib_uverbs_device*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.xrcd_table_entry*, align 8
  store %struct.ib_uverbs_device* %0, %struct.ib_uverbs_device** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %6 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.xrcd_table_entry* @xrcd_table_search(%struct.ib_uverbs_device* %6, %struct.inode* %7)
  store %struct.xrcd_table_entry* %8, %struct.xrcd_table_entry** %5, align 8
  %9 = load %struct.xrcd_table_entry*, %struct.xrcd_table_entry** %5, align 8
  %10 = icmp ne %struct.xrcd_table_entry* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i32 @iput(%struct.inode* %12)
  %14 = load %struct.xrcd_table_entry*, %struct.xrcd_table_entry** %5, align 8
  %15 = getelementptr inbounds %struct.xrcd_table_entry, %struct.xrcd_table_entry* %14, i32 0, i32 0
  %16 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %3, align 8
  %17 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %16, i32 0, i32 0
  %18 = call i32 @rb_erase(i32* %15, i32* %17)
  %19 = load %struct.xrcd_table_entry*, %struct.xrcd_table_entry** %5, align 8
  %20 = call i32 @kfree(%struct.xrcd_table_entry* %19)
  br label %21

21:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.xrcd_table_entry* @xrcd_table_search(%struct.ib_uverbs_device*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.xrcd_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
