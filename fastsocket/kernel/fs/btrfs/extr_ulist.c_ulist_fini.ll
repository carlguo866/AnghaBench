; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ulist.c_ulist_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ulist.c_ulist_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ulist = type { i64, i32 }

@ULIST_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ulist_fini(%struct.ulist* %0) #0 {
  %2 = alloca %struct.ulist*, align 8
  store %struct.ulist* %0, %struct.ulist** %2, align 8
  %3 = load %struct.ulist*, %struct.ulist** %2, align 8
  %4 = getelementptr inbounds %struct.ulist, %struct.ulist* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ULIST_SIZE, align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.ulist*, %struct.ulist** %2, align 8
  %10 = getelementptr inbounds %struct.ulist, %struct.ulist* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @kfree(i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.ulist*, %struct.ulist** %2, align 8
  %15 = getelementptr inbounds %struct.ulist, %struct.ulist* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  ret void
}

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
