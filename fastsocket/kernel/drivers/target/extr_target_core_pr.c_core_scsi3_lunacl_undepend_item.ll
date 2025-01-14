; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_lunacl_undepend_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_lunacl_undepend_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_dev_entry = type { i32, %struct.se_lun_acl* }
%struct.se_lun_acl = type { %struct.TYPE_3__, %struct.se_node_acl* }
%struct.TYPE_3__ = type { i32 }
%struct.se_node_acl = type { %struct.se_portal_group* }
%struct.se_portal_group = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_dev_entry*)* @core_scsi3_lunacl_undepend_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @core_scsi3_lunacl_undepend_item(%struct.se_dev_entry* %0) #0 {
  %2 = alloca %struct.se_dev_entry*, align 8
  %3 = alloca %struct.se_lun_acl*, align 8
  %4 = alloca %struct.se_node_acl*, align 8
  %5 = alloca %struct.se_portal_group*, align 8
  store %struct.se_dev_entry* %0, %struct.se_dev_entry** %2, align 8
  %6 = load %struct.se_dev_entry*, %struct.se_dev_entry** %2, align 8
  %7 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %6, i32 0, i32 1
  %8 = load %struct.se_lun_acl*, %struct.se_lun_acl** %7, align 8
  store %struct.se_lun_acl* %8, %struct.se_lun_acl** %3, align 8
  %9 = load %struct.se_lun_acl*, %struct.se_lun_acl** %3, align 8
  %10 = icmp ne %struct.se_lun_acl* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.se_dev_entry*, %struct.se_dev_entry** %2, align 8
  %13 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %12, i32 0, i32 0
  %14 = call i32 @atomic_dec(i32* %13)
  %15 = call i32 (...) @smp_mb__after_atomic_dec()
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.se_lun_acl*, %struct.se_lun_acl** %3, align 8
  %18 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %17, i32 0, i32 1
  %19 = load %struct.se_node_acl*, %struct.se_node_acl** %18, align 8
  store %struct.se_node_acl* %19, %struct.se_node_acl** %4, align 8
  %20 = load %struct.se_node_acl*, %struct.se_node_acl** %4, align 8
  %21 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %20, i32 0, i32 0
  %22 = load %struct.se_portal_group*, %struct.se_portal_group** %21, align 8
  store %struct.se_portal_group* %22, %struct.se_portal_group** %5, align 8
  %23 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %24 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.se_lun_acl*, %struct.se_lun_acl** %3, align 8
  %29 = getelementptr inbounds %struct.se_lun_acl, %struct.se_lun_acl* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @configfs_undepend_item(i32 %27, i32* %30)
  %32 = load %struct.se_dev_entry*, %struct.se_dev_entry** %2, align 8
  %33 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %32, i32 0, i32 0
  %34 = call i32 @atomic_dec(i32* %33)
  %35 = call i32 (...) @smp_mb__after_atomic_dec()
  br label %36

36:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @smp_mb__after_atomic_dec(...) #1

declare dso_local i32 @configfs_undepend_item(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
