; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_dl.c_grub_dl_unload_all.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_dl.c_grub_dl_unload_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }

@grub_dl_head = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grub_dl_unload_all() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  br label %2

2:                                                ; preds = %22, %0
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @grub_dl_head, align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %2
  %6 = call i32 (...) @grub_dl_unload_unneeded()
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @grub_dl_head, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %1, align 8
  br label %8

8:                                                ; preds = %18, %5
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %11
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %1, align 8
  br label %8

22:                                               ; preds = %8
  br label %2

23:                                               ; preds = %2
  ret void
}

declare dso_local i32 @grub_dl_unload_unneeded(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
