; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_close.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.grub_reiserfs_data* }
%struct.grub_reiserfs_data = type { %struct.grub_reiserfs_data* }
%struct.grub_fshelp_node = type { %struct.grub_fshelp_node* }

@my_mod = common dso_local global i32 0, align 4
@GRUB_ERR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @grub_reiserfs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_reiserfs_close(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.grub_fshelp_node*, align 8
  %4 = alloca %struct.grub_reiserfs_data*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %6, align 8
  %8 = bitcast %struct.grub_reiserfs_data* %7 to %struct.grub_fshelp_node*
  store %struct.grub_fshelp_node* %8, %struct.grub_fshelp_node** %3, align 8
  %9 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %3, align 8
  %10 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %9, i32 0, i32 0
  %11 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %10, align 8
  %12 = bitcast %struct.grub_fshelp_node* %11 to %struct.grub_reiserfs_data*
  store %struct.grub_reiserfs_data* %12, %struct.grub_reiserfs_data** %4, align 8
  %13 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %4, align 8
  %14 = call i32 @grub_free(%struct.grub_reiserfs_data* %13)
  %15 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %3, align 8
  %16 = bitcast %struct.grub_fshelp_node* %15 to %struct.grub_reiserfs_data*
  %17 = call i32 @grub_free(%struct.grub_reiserfs_data* %16)
  %18 = load i32, i32* @my_mod, align 4
  %19 = call i32 @grub_dl_unref(i32 %18)
  %20 = load i32, i32* @GRUB_ERR_NONE, align 4
  ret i32 %20
}

declare dso_local i32 @grub_free(%struct.grub_reiserfs_data*) #1

declare dso_local i32 @grub_dl_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
