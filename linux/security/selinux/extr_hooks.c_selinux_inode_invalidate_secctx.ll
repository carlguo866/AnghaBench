; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_invalidate_secctx.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_invalidate_secctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.inode_security_struct = type { i32, i32 }

@LABEL_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @selinux_inode_invalidate_secctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selinux_inode_invalidate_secctx(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.inode_security_struct*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.inode_security_struct* @selinux_inode(%struct.inode* %4)
  store %struct.inode_security_struct* %5, %struct.inode_security_struct** %3, align 8
  %6 = load %struct.inode_security_struct*, %struct.inode_security_struct** %3, align 8
  %7 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load i32, i32* @LABEL_INVALID, align 4
  %10 = load %struct.inode_security_struct*, %struct.inode_security_struct** %3, align 8
  %11 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.inode_security_struct*, %struct.inode_security_struct** %3, align 8
  %13 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %12, i32 0, i32 0
  %14 = call i32 @spin_unlock(i32* %13)
  ret void
}

declare dso_local %struct.inode_security_struct* @selinux_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
