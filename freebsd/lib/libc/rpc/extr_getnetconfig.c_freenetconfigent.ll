; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getnetconfig.c_freenetconfigent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_getnetconfig.c_freenetconfigent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { %struct.netconfig*, %struct.netconfig* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freenetconfigent(%struct.netconfig* %0) #0 {
  %2 = alloca %struct.netconfig*, align 8
  store %struct.netconfig* %0, %struct.netconfig** %2, align 8
  %3 = load %struct.netconfig*, %struct.netconfig** %2, align 8
  %4 = icmp ne %struct.netconfig* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load %struct.netconfig*, %struct.netconfig** %2, align 8
  %7 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %6, i32 0, i32 1
  %8 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %9 = call i32 @free(%struct.netconfig* %8)
  %10 = load %struct.netconfig*, %struct.netconfig** %2, align 8
  %11 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %10, i32 0, i32 0
  %12 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %13 = call i32 @free(%struct.netconfig* %12)
  %14 = load %struct.netconfig*, %struct.netconfig** %2, align 8
  %15 = call i32 @free(%struct.netconfig* %14)
  br label %16

16:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @free(%struct.netconfig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
