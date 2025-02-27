; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_check_revoke.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_check_revoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"mac_vnode_check_revoke\00", align 1
@vnode_check_revoke = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnode_check_revoke(%struct.ucred* %0, %struct.vnode* %1) #0 {
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  %6 = load %struct.vnode*, %struct.vnode** %4, align 8
  %7 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @vnode_check_revoke, align 4
  %9 = load %struct.ucred*, %struct.ucred** %3, align 8
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = load %struct.vnode*, %struct.vnode** %4, align 8
  %12 = getelementptr inbounds %struct.vnode, %struct.vnode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @MAC_POLICY_CHECK(i32 %8, %struct.ucred* %9, %struct.vnode* %10, i32 %13)
  %15 = load i32, i32* @vnode_check_revoke, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ucred*, %struct.ucred** %3, align 8
  %18 = load %struct.vnode*, %struct.vnode** %4, align 8
  %19 = call i32 @MAC_CHECK_PROBE2(i32 %15, i32 %16, %struct.ucred* %17, %struct.vnode* %18)
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @MAC_POLICY_CHECK(i32, %struct.ucred*, %struct.vnode*, i32) #1

declare dso_local i32 @MAC_CHECK_PROBE2(i32, i32, %struct.ucred*, %struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
