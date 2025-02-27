; ModuleID = '/home/carl/AnghaBench/linux/security/extr_security.c_security_d_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_security.c_security_d_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@d_instantiate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @security_d_instantiate(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %4, align 8
  %6 = icmp ne %struct.inode* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i64 @IS_PRIVATE(%struct.inode* %8)
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ false, %2 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %22

17:                                               ; preds = %11
  %18 = load i32, i32* @d_instantiate, align 4
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i32 @call_void_hook(i32 %18, %struct.dentry* %19, %struct.inode* %20)
  br label %22

22:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IS_PRIVATE(%struct.inode*) #1

declare dso_local i32 @call_void_hook(i32, %struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
