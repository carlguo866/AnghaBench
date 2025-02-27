; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_lookup_one_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_lookup_one_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qstr = type { i32 }

@MAY_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @lookup_one_len(i8* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qstr, align 4
  store i8* %0, i8** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @mutex_is_locked(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON_ONCE(i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @__lookup_one_len(i8* %19, %struct.qstr* %9, %struct.dentry* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.dentry* @ERR_PTR(i32 %26)
  store %struct.dentry* %27, %struct.dentry** %4, align 8
  br label %42

28:                                               ; preds = %3
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* @MAY_EXEC, align 4
  %33 = call i32 @inode_permission(%struct.TYPE_2__* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.dentry* @ERR_PTR(i32 %37)
  store %struct.dentry* %38, %struct.dentry** %4, align 8
  br label %42

39:                                               ; preds = %28
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = call %struct.dentry* @__lookup_hash(%struct.qstr* %9, %struct.dentry* %40, i32* null)
  store %struct.dentry* %41, %struct.dentry** %4, align 8
  br label %42

42:                                               ; preds = %39, %36, %25
  %43 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %43
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @__lookup_one_len(i8*, %struct.qstr*, %struct.dentry*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @inode_permission(%struct.TYPE_2__*, i32) #1

declare dso_local %struct.dentry* @__lookup_hash(%struct.qstr*, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
