; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_qtree_entry_unused.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_qtree_entry_unused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtree_entry_unused(%struct.qtree_mem_dqinfo* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtree_mem_dqinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %10 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %26

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %7

25:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
