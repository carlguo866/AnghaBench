; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_proclog.c_hysdn_proclog_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_proclog.c_hysdn_proclog_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.procdata = type { i32, i64 }

@hysdn_proc_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hysdn_proclog_release(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.procdata*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = bitcast i32* %6 to %struct.procdata*
  store %struct.procdata* %7, %struct.procdata** %3, align 8
  %8 = icmp ne %struct.procdata* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.procdata*, %struct.procdata** %3, align 8
  %11 = getelementptr inbounds %struct.procdata, %struct.procdata* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.procdata*, %struct.procdata** %3, align 8
  %16 = getelementptr inbounds %struct.procdata, %struct.procdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @hysdn_proc_entry, align 4
  %19 = call i32 @remove_proc_entry(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %14, %9
  %21 = load %struct.procdata*, %struct.procdata** %3, align 8
  %22 = call i32 @kfree(%struct.procdata* %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @remove_proc_entry(i32, i32) #1

declare dso_local i32 @kfree(%struct.procdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
