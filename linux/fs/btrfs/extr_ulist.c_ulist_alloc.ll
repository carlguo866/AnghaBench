; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ulist.c_ulist_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ulist.c_ulist_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ulist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ulist* @ulist_alloc(i32 %0) #0 {
  %2 = alloca %struct.ulist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ulist*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ulist* @kmalloc(i32 4, i32 %5)
  store %struct.ulist* %6, %struct.ulist** %4, align 8
  %7 = load %struct.ulist*, %struct.ulist** %4, align 8
  %8 = icmp ne %struct.ulist* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ulist* null, %struct.ulist** %2, align 8
  br label %14

10:                                               ; preds = %1
  %11 = load %struct.ulist*, %struct.ulist** %4, align 8
  %12 = call i32 @ulist_init(%struct.ulist* %11)
  %13 = load %struct.ulist*, %struct.ulist** %4, align 8
  store %struct.ulist* %13, %struct.ulist** %2, align 8
  br label %14

14:                                               ; preds = %10, %9
  %15 = load %struct.ulist*, %struct.ulist** %2, align 8
  ret %struct.ulist* %15
}

declare dso_local %struct.ulist* @kmalloc(i32, i32) #1

declare dso_local i32 @ulist_init(%struct.ulist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
