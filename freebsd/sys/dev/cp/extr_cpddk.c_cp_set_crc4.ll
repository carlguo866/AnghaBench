; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_set_crc4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_set_crc4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_set_crc4(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 3
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %11

10:                                               ; preds = %2
  br label %21

11:                                               ; preds = %9
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = call i32 @l162(%struct.TYPE_5__* %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = call i32 @l206(%struct.TYPE_5__* %19)
  br label %21

21:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @l162(%struct.TYPE_5__*) #1

declare dso_local i32 @l206(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
