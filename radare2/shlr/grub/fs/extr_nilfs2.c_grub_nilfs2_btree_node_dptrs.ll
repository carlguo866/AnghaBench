; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_btree_node_dptrs.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_nilfs2.c_grub_nilfs2_btree_node_dptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_nilfs2_data = type { i32 }
%struct.grub_nilfs2_btree_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.grub_nilfs2_data*, %struct.grub_nilfs2_btree_node*)* @grub_nilfs2_btree_node_dptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @grub_nilfs2_btree_node_dptrs(%struct.grub_nilfs2_data* %0, %struct.grub_nilfs2_btree_node* %1) #0 {
  %3 = alloca %struct.grub_nilfs2_data*, align 8
  %4 = alloca %struct.grub_nilfs2_btree_node*, align 8
  store %struct.grub_nilfs2_data* %0, %struct.grub_nilfs2_data** %3, align 8
  store %struct.grub_nilfs2_btree_node* %1, %struct.grub_nilfs2_btree_node** %4, align 8
  %5 = load %struct.grub_nilfs2_btree_node*, %struct.grub_nilfs2_btree_node** %4, align 8
  %6 = call i64 @grub_nilfs2_btree_node_dkeys(%struct.grub_nilfs2_btree_node* %5)
  %7 = load %struct.grub_nilfs2_data*, %struct.grub_nilfs2_data** %3, align 8
  %8 = load %struct.grub_nilfs2_btree_node*, %struct.grub_nilfs2_btree_node** %4, align 8
  %9 = call i64 @grub_nilfs2_btree_node_nchildren_max(%struct.grub_nilfs2_data* %7, %struct.grub_nilfs2_btree_node* %8)
  %10 = add nsw i64 %6, %9
  %11 = inttoptr i64 %10 to i32*
  ret i32* %11
}

declare dso_local i64 @grub_nilfs2_btree_node_dkeys(%struct.grub_nilfs2_btree_node*) #1

declare dso_local i64 @grub_nilfs2_btree_node_nchildren_max(%struct.grub_nilfs2_data*, %struct.grub_nilfs2_btree_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
