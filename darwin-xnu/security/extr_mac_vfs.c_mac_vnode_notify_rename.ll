; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_notify_rename.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_notify_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32 }

@vnode_notify_rename = common dso_local global i32 0, align 4
@mac_vnode_enforce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_vnode_notify_rename(i32 %0, %struct.vnode* %1, %struct.vnode* %2, %struct.componentname* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.componentname*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.vnode* %2, %struct.vnode** %7, align 8
  store %struct.componentname* %3, %struct.componentname** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @vfs_context_ucred(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @mac_cred_check_enforce(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %29

16:                                               ; preds = %4
  %17 = load i32, i32* @vnode_notify_rename, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.vnode*, %struct.vnode** %6, align 8
  %20 = load %struct.vnode*, %struct.vnode** %6, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vnode*, %struct.vnode** %7, align 8
  %24 = load %struct.vnode*, %struct.vnode** %7, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.componentname*, %struct.componentname** %8, align 8
  %28 = call i32 @MAC_PERFORM(i32 %17, i32 %18, %struct.vnode* %19, i32 %22, %struct.vnode* %23, i32 %26, %struct.componentname* %27)
  br label %29

29:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @mac_cred_check_enforce(i32) #1

declare dso_local i32 @MAC_PERFORM(i32, i32, %struct.vnode*, i32, %struct.vnode*, i32, %struct.componentname*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
