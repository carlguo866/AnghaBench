; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_mq.c___mq_setattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_mq.c___mq_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.mq_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mq_setattr(%struct.TYPE_3__* %0, %struct.mq_attr* %1, %struct.mq_attr* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.mq_attr*, align 8
  %6 = alloca %struct.mq_attr*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.mq_attr* %1, %struct.mq_attr** %5, align 8
  store %struct.mq_attr* %2, %struct.mq_attr** %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mq_attr*, %struct.mq_attr** %5, align 8
  %11 = load %struct.mq_attr*, %struct.mq_attr** %6, align 8
  %12 = call i32 @__sys_kmq_setattr(i32 %9, %struct.mq_attr* %10, %struct.mq_attr* %11)
  ret i32 %12
}

declare dso_local i32 @__sys_kmq_setattr(i32, %struct.mq_attr*, %struct.mq_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
