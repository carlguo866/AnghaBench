; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_check_deleteacl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_vfs.c_mac_vnode_check_deleteacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"mac_vnode_check_deleteacl\00", align 1
@vnode_check_deleteacl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnode_check_deleteacl(%struct.ucred* %0, %struct.vnode* %1, i32 %2) #0 {
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.vnode* %1, %struct.vnode** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vnode*, %struct.vnode** %5, align 8
  %9 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @vnode_check_deleteacl, align 4
  %11 = load %struct.ucred*, %struct.ucred** %4, align 8
  %12 = load %struct.vnode*, %struct.vnode** %5, align 8
  %13 = load %struct.vnode*, %struct.vnode** %5, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @MAC_POLICY_CHECK(i32 %10, %struct.ucred* %11, %struct.vnode* %12, i32 %15, i32 %16)
  %18 = load i32, i32* @vnode_check_deleteacl, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ucred*, %struct.ucred** %4, align 8
  %21 = load %struct.vnode*, %struct.vnode** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @MAC_CHECK_PROBE3(i32 %18, i32 %19, %struct.ucred* %20, %struct.vnode* %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @MAC_POLICY_CHECK(i32, %struct.ucred*, %struct.vnode*, i32, i32) #1

declare dso_local i32 @MAC_CHECK_PROBE3(i32, i32, %struct.ucred*, %struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
