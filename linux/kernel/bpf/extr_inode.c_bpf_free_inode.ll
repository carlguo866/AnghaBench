; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_free_inode.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_free_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @bpf_free_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_free_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @S_ISLNK(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @kfree(i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = call i32 @bpf_inode_type(%struct.inode* %15, i32* %3)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @bpf_any_put(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %14
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = call i32 @free_inode_nonrcu(%struct.inode* %25)
  ret void
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @bpf_inode_type(%struct.inode*, i32*) #1

declare dso_local i32 @bpf_any_put(i32, i32) #1

declare dso_local i32 @free_inode_nonrcu(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
