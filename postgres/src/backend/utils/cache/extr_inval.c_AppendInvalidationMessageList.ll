; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_AppendInvalidationMessageList.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_AppendInvalidationMessageList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__**, %struct.TYPE_4__**)* @AppendInvalidationMessageList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AppendInvalidationMessageList(%struct.TYPE_4__** %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %4, align 8
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %30

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %17, %11
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %5, align 8
  br label %12

21:                                               ; preds = %12
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %25, align 8
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %29, align 8
  br label %30

30:                                               ; preds = %21, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
