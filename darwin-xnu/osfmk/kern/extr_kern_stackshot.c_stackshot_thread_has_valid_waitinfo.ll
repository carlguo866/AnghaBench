; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_stackshot_thread_has_valid_waitinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_stackshot_thread_has_valid_waitinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@TH_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @stackshot_thread_has_valid_waitinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stackshot_thread_has_valid_waitinfo(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @TH_WAIT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %21 [
    i32 128, label %15
    i32 133, label %15
    i32 131, label %16
    i32 130, label %16
    i32 129, label %16
    i32 132, label %16
  ]

15:                                               ; preds = %11, %11
  store i32 0, i32* %2, align 4
  br label %22

16:                                               ; preds = %11, %11, %11, %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = call i32* @kdp_pthread_get_thread_kwq(%struct.TYPE_4__* %17)
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %16, %15, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32* @kdp_pthread_get_thread_kwq(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
