; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_init_locks.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_init_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm_compressor_lck_grp_attr = common dso_local global i32 0, align 4
@vm_compressor_lck_grp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vm_compressor\00", align 1
@vm_compressor_lck_attr = common dso_local global i32 0, align 4
@c_master_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_compressor_init_locks() #0 {
  %1 = call i32 @lck_grp_attr_setdefault(i32* @vm_compressor_lck_grp_attr)
  %2 = call i32 @lck_grp_init(i32* @vm_compressor_lck_grp, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* @vm_compressor_lck_grp_attr)
  %3 = call i32 @lck_attr_setdefault(i32* @vm_compressor_lck_attr)
  %4 = call i32 @lck_rw_init(i32* @c_master_lock, i32* @vm_compressor_lck_grp, i32* @vm_compressor_lck_attr)
  ret void
}

declare dso_local i32 @lck_grp_attr_setdefault(i32*) #1

declare dso_local i32 @lck_grp_init(i32*, i8*, i32*) #1

declare dso_local i32 @lck_attr_setdefault(i32*) #1

declare dso_local i32 @lck_rw_init(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
